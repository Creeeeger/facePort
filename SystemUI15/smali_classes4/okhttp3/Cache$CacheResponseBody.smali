.class public final Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bodySource:Lokio/RealBufferedSource;

.field public final contentLength:Ljava/lang/String;

.field public final contentType:Ljava/lang/String;

.field public final snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    iget-object p1, p1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:Ljava/util/List;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/Source;

    new-instance p2, Lokhttp3/Cache$CacheResponseBody$1;

    invoke-direct {p2, p0, p1, p1}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokio/Source;)V

    new-instance p1, Lokio/RealBufferedSource;

    invoke-direct {p1, p2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/RealBufferedSource;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 3

    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    sget-object v2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 2

    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p0}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/RealBufferedSource;

    return-object p0
.end method
