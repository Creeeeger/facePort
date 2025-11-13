.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/SegmentedByteString;",
        "Lokio/ByteString;",
        "Ljava/lang/Object;",
        "writeReplace",
        "()Ljava/lang/Object;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final transient directory:[I

.field public final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final base64()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .locals 6

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    aget v3, v3, v1

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v2, v3, v2

    invoke-virtual {p1, v5, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    new-instance p0, Lokio/ByteString;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v0, "digest.digest()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/ByteString;-><init>([B)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    move-result v1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$okio()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$okio()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lokio/SegmentedByteString;->rangeEquals(Lokio/ByteString;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getSize$okio()I
    .locals 1

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v0, v1

    aget v5, v4, v5

    aget v4, v4, v1

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    :goto_1
    if-ge v5, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    aget-byte v7, v6, v5

    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    iput v2, p0, Lokio/ByteString;->hashCode:I

    move v0, v2

    :goto_2
    return v0
.end method

.method public final hex()Ljava/lang/String;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final internalArray$okio()[B
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final internalGet$okio(I)B
    .locals 7

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, p0

    add-int/2addr v3, v0

    aget v2, v2, v3

    aget-object p0, p0, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    return p0
.end method

.method public final rangeEquals(III[B)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$okio()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_4

    if-ltz p2, :cond_4

    array-length v1, p4

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p3, p1

    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_0
    if-ge p1, p3, :cond_3

    if-nez v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v4, v3, v1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v1

    aget v3, v3, v5

    add-int/2addr v4, v2

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v3, v3, v1

    invoke-static {v3, v2, p2, p4, v4}, Lokio/-Util;->arrayRangeEquals([BII[BI)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p2, v4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public final rangeEquals(Lokio/ByteString;I)Z
    .locals 8

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$okio()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0, v1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_3

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    :goto_1
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    aget v6, v5, v0

    sub-int/2addr v6, v4

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/2addr v7, v0

    aget v5, v5, v7

    add-int/2addr v6, v4

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v2

    sub-int v4, v2, v4

    add-int/2addr v4, v5

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v0

    invoke-virtual {p1, v3, v4, v6, v5}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public final toAsciiLowercase()Lokio/ByteString;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final toByteArray()[B
    .locals 9

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$okio()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v1, v2

    aget v6, v5, v6

    aget v5, v5, v2

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v2

    sub-int v3, v5, v3

    add-int v8, v6, v3

    invoke-static {v7, v4, v6, v0, v8}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([BII[BI)V

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write$okio(Lokio/Buffer;I)V
    .locals 8

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    :goto_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    aget v5, v4, v1

    sub-int/2addr v5, v3

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v6

    add-int/2addr v6, v1

    aget v4, v4, v6

    add-int/2addr v5, v3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v2

    sub-int v3, v2, v3

    add-int/2addr v3, v4

    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    new-instance v6, Lokio/Segment;

    add-int v7, v3, v5

    invoke-direct {v6, v4, v3, v7}, Lokio/Segment;-><init>([BII)V

    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_1

    iput-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    iput-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    :cond_1
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lokio/Segment;->push(Lokio/Segment;)V

    :goto_2
    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    iget-wide v0, p1, Lokio/Buffer;->size:J

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$okio()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    return-void
.end method
