.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;


# instance fields
.field public final cache:Lokhttp3/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    iget-object v3, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v6, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    sget-object v7, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    iget-object v8, v6, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    iget-object v9, v8, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    const-string v9, "MD5"

    invoke-virtual {v7, v9}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v3, v3, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v3, v7}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    new-instance v7, Lokhttp3/Cache$Entry;

    iget-object v9, v3, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/Source;

    invoke-direct {v7, v9}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V

    iget-object v9, v7, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    iget-object v10, v7, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    iget-object v11, v7, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v12, v7, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v13, "Content-Type"

    invoke-virtual {v12, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Content-Length"

    invoke-virtual {v12, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lokhttp3/Request$Builder;

    invoke-direct {v15}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v15, v11}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {v15, v10, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    invoke-virtual {v9}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v5

    iput-object v5, v15, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v15}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    new-instance v15, Lokhttp3/Response$Builder;

    invoke-direct {v15}, Lokhttp3/Response$Builder;-><init>()V

    iput-object v5, v15, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iget-object v5, v7, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    iput-object v5, v15, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    iget v5, v7, Lokhttp3/Cache$Entry;->code:I

    iput v5, v15, Lokhttp3/Response$Builder;->code:I

    iget-object v5, v7, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    iput-object v5, v15, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    invoke-virtual {v12}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v5

    iput-object v5, v15, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    new-instance v5, Lokhttp3/Cache$CacheResponseBody;

    invoke-direct {v5, v3, v13, v14}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v15, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    iget-object v3, v7, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    iput-object v3, v15, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iget-wide v12, v7, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    iput-wide v12, v15, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v12, v7, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    iput-wide v12, v15, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v15}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    iget-object v5, v8, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v3, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v5}, Lokhttp3/Cache$Companion;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v10, v6, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v10, v7}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    :cond_2
    iget-object v3, v3, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_1
    :cond_3
    :goto_0
    move-object v3, v4

    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lokhttp3/internal/cache/CacheStrategy$Factory;

    iget-object v8, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    invoke-direct {v7, v5, v6, v8, v3}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    iget-object v5, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    iget-object v6, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-nez v6, :cond_5

    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v6, v5, v4}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :goto_2
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object v2, v5

    goto/16 :goto_e

    :cond_5
    iget-object v8, v5, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-boolean v8, v8, Lokhttp3/HttpUrl;->isHttps:Z

    if-eqz v8, :cond_6

    iget-object v8, v6, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    if-nez v8, :cond_6

    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v6, v5, v4}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_2

    :cond_6
    sget-object v8, Lokhttp3/internal/cache/CacheStrategy;->Companion:Lokhttp3/internal/cache/CacheStrategy$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lokhttp3/internal/cache/CacheStrategy$Companion;->isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v6, v5, v4}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_2

    :cond_7
    iget-object v8, v5, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez v8, :cond_8

    sget-object v8, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {v8}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v8

    iput-object v8, v5, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_8
    iget-boolean v9, v8, Lokhttp3/CacheControl;->noCache:Z

    if-nez v9, :cond_1b

    iget-object v9, v5, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v10, "If-Modified-Since"

    invoke-virtual {v9, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1b

    const-string v11, "If-None-Match"

    invoke-virtual {v9, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    goto/16 :goto_d

    :cond_9
    invoke-virtual {v6}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v12

    iget-object v13, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    iget-wide v14, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    move-object/from16 v16, v5

    const-wide/16 v4, 0x0

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    move-object v13, v10

    move-object/from16 v19, v11

    sub-long v10, v14, v17

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_3

    :cond_a
    move-object v13, v10

    move-object/from16 v19, v11

    move-wide v10, v4

    :goto_3
    iget v4, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v3

    int-to-long v3, v4

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_4

    :cond_b
    move-object/from16 v20, v3

    :goto_4
    iget-wide v3, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v21, v14, v3

    move-wide/from16 v23, v3

    iget-wide v3, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    sub-long/2addr v3, v14

    add-long v10, v10, v21

    add-long/2addr v10, v3

    invoke-virtual {v6}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    iget v3, v3, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v14, v3

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    goto :goto_7

    :cond_c
    iget-object v3, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_e

    iget-object v4, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    :cond_d
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v14

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-lez v5, :cond_11

    goto :goto_7

    :cond_e
    iget-object v3, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_11

    iget-object v3, v6, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v3, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v4, v3, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v4, :cond_f

    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, v3, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lokhttp3/HttpUrl$Companion;->toQueryString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_11

    iget-object v3, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_6

    :cond_10
    move-wide/from16 v3, v23

    :goto_6
    iget-object v5, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v3, v14

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-lez v5, :cond_11

    const/16 v5, 0xa

    int-to-long v14, v5

    div-long/2addr v3, v14

    goto :goto_7

    :cond_11
    const-wide/16 v3, 0x0

    :goto_7
    iget v5, v8, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v14, -0x1

    if-eq v5, v14, :cond_12

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v21, v2

    int-to-long v1, v5

    invoke-virtual {v15, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_8

    :cond_12
    move-object/from16 v21, v2

    :goto_8
    iget v1, v8, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v14, :cond_13

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v14, v1

    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    goto :goto_9

    :cond_13
    const-wide/16 v14, 0x0

    :goto_9
    iget-boolean v1, v12, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-nez v1, :cond_14

    iget v1, v8, Lokhttp3/CacheControl;->maxStaleSeconds:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_a

    :cond_14
    const-wide/16 v0, 0x0

    :goto_a
    iget-boolean v2, v12, Lokhttp3/CacheControl;->noCache:Z

    if-nez v2, :cond_17

    add-long/2addr v14, v10

    add-long/2addr v0, v3

    cmp-long v0, v14, v0

    if-gez v0, :cond_17

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, v6}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    cmp-long v1, v14, v3

    if-ltz v1, :cond_15

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    const-string v2, "Warning"

    iget-object v3, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v3, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-wide/32 v1, 0x5265c00

    cmp-long v1, v10, v1

    if-lez v1, :cond_16

    invoke-virtual {v6}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    iget v1, v1, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    iget-object v1, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v1, :cond_16

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    const-string v2, "Warning"

    iget-object v3, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v3, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v1, v0}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object/from16 v2, v16

    goto :goto_e

    :cond_17
    iget-object v0, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v0, :cond_18

    move-object/from16 v10, v19

    goto :goto_c

    :cond_18
    iget-object v0, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_19

    iget-object v0, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    :goto_b
    move-object v10, v13

    goto :goto_c

    :cond_19
    iget-object v0, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, v7, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_b

    :goto_c
    invoke-virtual {v9}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v0}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/Request$Builder;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v1, v0, v6}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    move-object v6, v1

    goto :goto_e

    :cond_1a
    move-object/from16 v2, v16

    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v0, 0x0

    invoke-direct {v6, v2, v0}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_e

    :cond_1b
    :goto_d
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object v0, v4

    move-object v2, v5

    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v6, v2, v0}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :goto_e
    iget-object v0, v6, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v0, :cond_1d

    iget-object v0, v2, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez v0, :cond_1c

    sget-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, v2, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_1c
    iget-boolean v0, v0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v0, :cond_1d

    new-instance v6, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v1, 0x0

    invoke-direct {v6, v1, v1}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_f

    :cond_1d
    const/4 v1, 0x0

    :goto_f
    iget-object v0, v6, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    iget-object v2, v6, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v3, p0

    iget-object v4, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    if-eqz v4, :cond_1e

    monitor-enter v4

    monitor-exit v4

    :cond_1e
    move-object/from16 v4, v21

    instance-of v5, v4, Lokhttp3/internal/connection/RealCall;

    if-nez v5, :cond_1f

    move-object v4, v1

    :cond_1f
    if-eqz v4, :cond_20

    iget-object v4, v4, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    if-eqz v4, :cond_20

    goto :goto_10

    :cond_20
    sget-object v4, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener$Companion$NONE$1;

    :goto_10
    if-eqz v20, :cond_21

    if-nez v2, :cond_21

    move-object/from16 v5, v20

    iget-object v6, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v6, :cond_22

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_11

    :cond_21
    move-object/from16 v5, v20

    :cond_22
    :goto_11
    if-nez v0, :cond_23

    if-nez v2, :cond_23

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    move-object/from16 v6, p1

    iget-object v1, v6, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v1, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    const/16 v1, 0x1f8

    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    iput-object v1, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_23
    move-object/from16 v6, p1

    if-nez v0, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, v2}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    sget-object v1, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-static {v1, v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    const-string v2, "cacheResponse"

    invoke-static {v2, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v1, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_24
    if-eqz v2, :cond_25

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_12

    :cond_25
    iget-object v7, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    if-eqz v7, :cond_26

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_26
    :goto_12
    :try_start_2
    invoke-virtual {v6, v0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_32

    iget v6, v5, Lokhttp3/Response;->code:I

    const/16 v7, 0x130

    if-ne v6, v7, :cond_31

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, v2}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    sget-object v6, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    iget-object v7, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    iget-object v8, v5, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lokhttp3/Headers$Builder;

    invoke-direct {v6}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v9, :cond_2b

    invoke-virtual {v7, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Warning"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    goto :goto_15

    :cond_27
    const-string v13, "Content-Length"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_29

    const-string v13, "Content-Encoding"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_29

    const-string v13, "Content-Type"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_28

    goto :goto_14

    :cond_28
    invoke-static {v11}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-virtual {v8, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2a

    :cond_29
    :goto_14
    invoke-virtual {v6, v11, v12}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_2b
    invoke-virtual {v8}, Lokhttp3/Headers;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v7, :cond_2e

    invoke-virtual {v8, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2d

    const-string v11, "Content-Encoding"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2d

    const-string v11, "Content-Type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c

    goto :goto_17

    :cond_2c
    invoke-static {v10}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-virtual {v8, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_2e
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v6

    iput-object v6, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    iget-wide v6, v5, Lokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v6, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v6, v5, Lokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v6, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    sget-object v6, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-static {v6, v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v7

    const-string v8, "cacheResponse"

    invoke-static {v8, v7}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v7, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-static {v6, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v6

    const-string v7, "networkResponse"

    invoke-static {v7, v6}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v6, v0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iget-object v5, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    iget-object v5, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter v5

    monitor-exit v5

    iget-object v3, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lokhttp3/Cache$Entry;

    invoke-direct {v3, v0}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    iget-object v2, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v2, :cond_30

    check-cast v2, Lokhttp3/Cache$CacheResponseBody;

    iget-object v2, v2, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    :try_start_3
    iget-object v5, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v6, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v7, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v5, v6, v7, v8}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v3, v1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_18

    :catch_2
    if-eqz v1, :cond_2f

    :try_start_4
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2f
    :goto_18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v6, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v6, :cond_32

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_32
    new-instance v6, Lokhttp3/Response$Builder;

    invoke-direct {v6, v5}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    sget-object v7, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-static {v7, v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v8

    const-string v9, "cacheResponse"

    invoke-static {v9, v8}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v8, v6, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-static {v7, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    const-string v7, "networkResponse"

    invoke-static {v7, v5}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    iput-object v5, v6, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    iget-object v6, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    if-eqz v6, :cond_3b

    invoke-static {v5}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v6, Lokhttp3/internal/cache/CacheStrategy;->Companion:Lokhttp3/internal/cache/CacheStrategy$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lokhttp3/internal/cache/CacheStrategy$Companion;->isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v0, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v5, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v3, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    sget-object v6, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    :try_start_5
    iget-object v3, v5, Lokhttp3/Response;->request:Lokhttp3/Request;

    invoke-virtual {v0, v3}, Lokhttp3/Cache;->remove$okhttp(Lokhttp3/Request;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_33
    :goto_19
    move-object v3, v1

    goto :goto_1a

    :cond_34
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    goto :goto_19

    :cond_35
    sget-object v3, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v5, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v3}, Lokhttp3/Cache$Companion;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v3

    const-string v6, "*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_19

    :cond_36
    new-instance v3, Lokhttp3/Cache$Entry;

    invoke-direct {v3, v5}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    :try_start_6
    iget-object v6, v0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v7, v5, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v7, v7, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    sget-object v8, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    iget-object v7, v7, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    const-string v8, "MD5"

    invoke-virtual {v7, v8}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v7

    sget-wide v8, Lokhttp3/internal/cache/DiskLruCache;->ANY_SEQUENCE_NUMBER:J

    invoke-virtual {v6, v7, v8, v9}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v6, :cond_33

    :try_start_7
    invoke-virtual {v3, v6}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    new-instance v3, Lokhttp3/Cache$RealCacheRequest;

    invoke-direct {v3, v0, v6}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1a

    :catch_5
    move-object v6, v1

    :catch_6
    if-eqz v6, :cond_33

    :try_start_8
    invoke-virtual {v6}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_19

    :goto_1a
    if-nez v3, :cond_37

    goto :goto_1b

    :cond_37
    iget-object v0, v3, Lokhttp3/Cache$RealCacheRequest;->body:Lokhttp3/Cache$RealCacheRequest$1;

    iget-object v6, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v6

    new-instance v7, Lokio/RealBufferedSink;

    invoke-direct {v7, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;

    invoke-direct {v0, v6, v3, v7}, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;-><init>(Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    const-string v3, "Content-Type"

    iget-object v6, v5, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v6, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    move-object v1, v3

    :cond_38
    iget-object v3, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3, v5}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    new-instance v5, Lokhttp3/internal/http/RealResponseBody;

    new-instance v8, Lokio/RealBufferedSource;

    invoke-direct {v8, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    invoke-direct {v5, v1, v6, v7, v8}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    iput-object v5, v3, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    :goto_1b
    if-eqz v2, :cond_39

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_39
    return-object v5

    :cond_3a
    sget-object v1, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    iget-object v2, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :try_start_9
    iget-object v1, v3, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/Cache;

    invoke-virtual {v1, v0}, Lokhttp3/Cache;->remove$okhttp(Lokhttp3/Request;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_3b
    return-object v5

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_3c

    iget-object v0, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_3c

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3c
    throw v1
.end method
