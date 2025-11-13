.class public final Lokhttp3/RequestBody$2;
.super Lokhttp3/RequestBody;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$byteCount:I

.field public final synthetic val$content:[B

.field public final synthetic val$contentType:Lokhttp3/MediaType;

.field public final synthetic val$offset:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/RequestBody$2;->val$contentType:Lokhttp3/MediaType;

    iput p1, p0, Lokhttp3/RequestBody$2;->val$byteCount:I

    iput-object p2, p0, Lokhttp3/RequestBody$2;->val$content:[B

    const/4 p1, 0x0

    iput p1, p0, Lokhttp3/RequestBody$2;->val$offset:I

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget p0, p0, Lokhttp3/RequestBody$2;->val$byteCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/RequestBody$2;->val$contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 2

    iget v0, p0, Lokhttp3/RequestBody$2;->val$byteCount:I

    iget-object v1, p0, Lokhttp3/RequestBody$2;->val$content:[B

    iget p0, p0, Lokhttp3/RequestBody$2;->val$offset:I

    invoke-interface {p1, v1, p0, v0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
