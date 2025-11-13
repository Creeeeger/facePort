.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final cookieJar:Lokhttp3/CookieJar$1;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar$1;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "Content-Type"

    const-string v6, "Content-Length"

    iget-object v7, v1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v9, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    iget-object v8, v8, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v9, v5, v8}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    cmp-long v9, v7, v3

    const-string v10, "Transfer-Encoding"

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v8, v6, v7}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v8, "chunked"

    invoke-virtual {v7, v10, v8}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v7, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v8, "Host"

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    if-nez v9, :cond_3

    invoke-static {v11, v10}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v12, v8, v9}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v8, "Connection"

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v9, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v12, "Keep-Alive"

    invoke-virtual {v9, v8, v12}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v8, "Accept-Encoding"

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "gzip"

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v7, v9}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v9, v8, v12}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object/from16 v9, p0

    goto :goto_1

    :cond_5
    move-object/from16 v9, p0

    move v8, v10

    :goto_1
    iget-object v9, v9, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar$1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    :goto_2
    if-ge v10, v15, :cond_7

    if-lez v10, :cond_6

    const-string v3, "; "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    iget-object v4, v3, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v3, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v10, "Cookie"

    invoke-virtual {v4, v10, v3}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v3, "User-Agent"

    invoke-virtual {v7, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    iget-object v4, v2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v7, "okhttp/3.14.4"

    invoke-virtual {v4, v3, v7}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    iget-object v2, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v9, v11, v2}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar$1;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    iput-object v1, v2, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    if-eqz v8, :cond_a

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lokio/GzipSource;

    iget-object v4, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    iget-object v4, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v4}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    iget-object v1, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v4, Lokhttp3/Headers$Builder;

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v6, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-static {v6, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v4, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    new-instance v4, Lokio/RealBufferedSource;

    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    const-wide/16 v5, -0x1

    invoke-direct {v1, v0, v5, v6, v4}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V

    iput-object v1, v2, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    :cond_a
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
