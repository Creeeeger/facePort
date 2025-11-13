.class public final Lokhttp3/ResponseBody$Companion$asResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $contentLength:J

.field public final synthetic $contentType:Lokhttp3/MediaType;

.field public final synthetic $this_asResponseBody:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Lokhttp3/MediaType;J)V
    .locals 0

    iput-object p1, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lokio/BufferedSource;

    iput-object p2, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lokhttp3/MediaType;

    iput-wide p3, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lokio/BufferedSource;

    return-object p0
.end method
