.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final body:Lokhttp3/RequestBody;

.field public volatile cacheControl:Lokhttp3/CacheControl;

.field public final headers:Lokhttp3/Headers;

.field public final method:Ljava/lang/String;

.field public final tags:Ljava/util/Map;

.field public final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Lokhttp3/Request$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Headers;

    invoke-direct {v1, v0}, Lokhttp3/Headers;-><init>(Lokhttp3/Headers$Builder;)V

    iput-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    iget-object v0, p1, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    iput-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final newBuilder()Lokhttp3/Request$Builder;
    .locals 3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;

    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object v1, v0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object v1, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object v1, v0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v1, v0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;

    iget-object p0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {p0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p0

    iput-object p0, v0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
