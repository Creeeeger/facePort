.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 16

    move-object/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    if-eqz v1, :cond_1

    iget-object v4, v1, Lokhttp3/Request;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {v4}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v4

    iput-object v4, v1, Lokhttp3/Request;->cacheControl:Lokhttp3/CacheControl;

    :goto_0
    iget-boolean v1, v4, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_1

    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v2, v3, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :cond_1
    iget-object v1, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iput-object v0, v1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v0, v1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    const/16 v0, 0x1f8

    iput v0, v1, Lokhttp3/Response$Builder;->code:I

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    iput-object v0, v1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody$1;

    iput-object v0, v1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v4, "cacheResponse"

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v2}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v4, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    :cond_3
    iput-object v1, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    const-string v1, "networkResponse"

    if-eqz v2, :cond_10

    iget v5, v0, Lokhttp3/Response;->code:I

    const/16 v6, 0x130

    if-ne v5, v6, :cond_f

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    iget-object v6, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    iget-object v7, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_1
    const-string v12, "Content-Type"

    const-string v13, "Content-Encoding"

    const-string v14, "Content-Length"

    if-ge v11, v9, :cond_9

    invoke-virtual {v6, v11}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "Warning"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v15}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v7, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    :goto_2
    sget-object v3, Lokhttp3/OkHttpClient$1;->instance:Lokhttp3/OkHttpClient$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v3, :cond_c

    invoke-virtual {v7, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v6}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lokhttp3/OkHttpClient$1;->instance:Lokhttp3/OkHttpClient$1;

    invoke-virtual {v7, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v6, Lokhttp3/Headers$Builder;

    invoke-direct {v6}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v7, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-static {v7, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v6, v5, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    iget-wide v6, v0, Lokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v6, v5, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v6, v0, Lokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v6, v5, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    invoke-static {v2}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v4, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    :cond_d
    iput-object v2, v5, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-static {v0}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    :cond_e
    iput-object v2, v5, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 v0, 0x0

    throw v0

    :cond_f
    iget-object v3, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_10
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-static {v2}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-static {v4, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    :cond_11
    iput-object v2, v3, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    invoke-static {v0}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v1, v0}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    :cond_12
    iput-object v0, v3, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
