.class public final Lokhttp3/RequestBody$1;
.super Lokhttp3/RequestBody;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$content:Lokio/ByteString;

.field public final synthetic val$contentType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokio/ByteString;)V
    .locals 1

    sget-object v0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lokhttp3/RequestBody$1;->val$contentType:Lokhttp3/MediaType;

    iput-object p1, p0, Lokhttp3/RequestBody$1;->val$content:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-object p0, p0, Lokhttp3/RequestBody$1;->val$content:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/RequestBody$1;->val$contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 0

    iget-object p0, p0, Lokhttp3/RequestBody$1;->val$content:Lokio/ByteString;

    invoke-interface {p1, p0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method
