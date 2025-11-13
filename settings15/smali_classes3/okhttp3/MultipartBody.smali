.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final COLONSPACE:[B

.field public static final CRLF:[B

.field public static final DASHDASH:[B

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;


# instance fields
.field public final boundary:Lokio/ByteString;

.field public contentLength:J

.field public final contentType:Lokhttp3/MediaType;

.field public final parts:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lokhttp3/MultipartBody;->COLONSPACE:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 4

    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lokhttp3/MultipartBody;->writeOrCountBytes$1(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final writeOrCountBytes$1(Lokio/BufferedSink;Z)J
    .locals 13

    if-eqz p2, :cond_0

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    iget-object v6, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    sget-object v7, Lokhttp3/MultipartBody;->DASHDASH:[B

    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    if-ge v5, v1, :cond_6

    iget-object v9, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/MultipartBody$Part;

    iget-object v10, v9, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    invoke-interface {p1, v7}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-interface {p1, v6}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lokhttp3/Headers;->size()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_1

    invoke-virtual {v10, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    sget-object v12, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v11, v12}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v11

    invoke-virtual {v10, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    invoke-interface {v11, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, v9, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v9, "Content-Type: "

    invoke-interface {p1, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    iget-object v7, v7, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-interface {v9, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_2
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_3

    const-string v7, "Content-Length: "

    invoke-interface {p1, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    invoke-interface {v7, v9, v10}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v7

    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    return-wide v11

    :cond_4
    :goto_3
    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v3, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v6, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    :goto_4
    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-interface {p1, v7}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-interface {p1, v6}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {p1, v7}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_7

    iget-wide p0, v0, Lokio/Buffer;->size:J

    add-long/2addr v3, p0

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    :cond_7
    return-wide v3
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes$1(Lokio/BufferedSink;Z)J

    return-void
.end method
