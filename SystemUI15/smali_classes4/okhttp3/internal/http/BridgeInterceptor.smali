.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 12

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, v0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    const-wide/16 v2, -0x1

    const-string v4, "Content-Type"

    const-string v5, "Content-Length"

    iget-object v6, v0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v7, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    cmp-long v8, v6, v2

    const-string v9, "Transfer-Encoding"

    if-eqz v8, :cond_1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v6, "chunked"

    invoke-virtual {v1, v9, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v6, v0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v7, "Host"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    if-nez v8, :cond_3

    invoke-static {v10, v9}, Lokhttp3/internal/Util;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v7, "Connection"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v8, "Keep-Alive"

    invoke-virtual {v1, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v7, "Accept-Encoding"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "gzip"

    if-nez v8, :cond_5

    const-string v8, "Range"

    invoke-virtual {v6, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual {v1, v7, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_5
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    move-object v7, p0

    check-cast v7, Lokhttp3/CookieJar$Companion$NoCookies;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "User-Agent"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, "okhttp/4.9.1"

    invoke-virtual {v1, v7, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    iget-object v1, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {p0, v10, v1}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    new-instance p0, Lokhttp3/Response$Builder;

    invoke-direct {p0, p1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    iput-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    if-eqz v9, :cond_9

    iget-object v0, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v6

    :goto_1
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_9

    new-instance v7, Lokio/GzipSource;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v7, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    iget-object v0, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    iget-object p1, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {p1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    move-object v6, p1

    :cond_8
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, v7}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    invoke-direct {p1, v6, v2, v3, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    iput-object p1, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    :cond_9
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
