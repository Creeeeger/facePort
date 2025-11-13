.class public final Lokhttp3/RequestBody$Companion$toRequestBody$2;
.super Lokhttp3/RequestBody;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $byteCount:I

.field public final synthetic $contentType:Lokhttp3/MediaType;

.field public final synthetic $offset:I

.field public final synthetic $this_toRequestBody:[B


# direct methods
.method public constructor <init>([BLokhttp3/MediaType;II)V
    .locals 0

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$this_toRequestBody:[B

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$contentType:Lokhttp3/MediaType;

    iput p3, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$byteCount:I

    iput p4, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$offset:I

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$byteCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final writeTo(Lokio/RealBufferedSink;)V
    .locals 3

    iget v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$byteCount:I

    iget-object v1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$this_toRequestBody:[B

    iget p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$offset:I

    iget-boolean v2, p1, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p1, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v2, v1, p0, v0}, Lokio/Buffer;->write([BII)V

    invoke-virtual {p1}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
