.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final transient directory:[I

.field public final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final base64()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;
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
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance p1, Lokio/ByteString;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lokio/ByteString;-><init>([B)V

    return-object p1
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

    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    invoke-virtual {p0, v2, p1, v1}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getSize$external__okio__android_common__okio_lib()I
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
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(I[B)I
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf(I[B)I

    move-result p0

    return p0
.end method

.method public final internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final internalGet$external__okio__android_common__okio_lib(I)B
    .locals 7

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->segment(Lokio/SegmentedByteString;I)I

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

.method public final lastIndexOf(I[B)I
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf(I[B)I

    move-result p0

    return p0
.end method

.method public final rangeEquals(III[B)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

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

    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->segment(Lokio/SegmentedByteString;I)I

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

    invoke-static {v3, v2, p2, p4, v4}, Lokio/-SegmentedByteString;->arrayRangeEquals([BII[BI)Z

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

.method public final rangeEquals(ILokio/ByteString;I)Z
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p3, p1

    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge p1, p3, :cond_3

    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
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

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, p1

    sub-int v3, p1, v3

    add-int/2addr v3, v4

    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    invoke-virtual {p2, v2, v3, v5, v4}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v5

    add-int/2addr p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public final substring(II)Lokio/ByteString;
    .locals 10

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p2

    :cond_0
    if-ltz p1, :cond_7

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    const-string v1, "endIndex="

    if-gt p2, v0, :cond_6

    sub-int v0, p2, p1

    if-ltz v0, :cond_5

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    if-ne p2, v1, :cond_1

    goto :goto_2

    :cond_1
    if-ne p1, p2, :cond_2

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p2}, Lokio/internal/-SegmentedByteString;->segment(Lokio/SegmentedByteString;I)I

    move-result p2

    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    add-int/lit8 v3, p2, 0x1

    array-length v4, v2

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt__ArraysJVMKt;->copyOfRangeToIndexCheck(II)V

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-gt v1, p2, :cond_3

    move v6, v1

    move v5, v4

    :goto_0
    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    aget v7, v7, v6

    sub-int/2addr v7, p1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    array-length v8, v2

    add-int/2addr v5, v8

    iget-object v8, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v9, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v9, v9

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, v3, v5

    if-eq v6, p2, :cond_3

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, p0, v1

    :goto_1
    array-length p0, v2

    aget p2, v3, p0

    sub-int/2addr p1, v4

    add-int/2addr p1, p2

    aput p1, v3, p0

    new-instance p0, Lokio/SegmentedByteString;

    invoke-direct {p0, v2, v3}, Lokio/SegmentedByteString;-><init>([[B[I)V

    :goto_2
    return-object p0

    :cond_5
    const-string p0, " < beginIndex="

    invoke-static {p2, p1, v1, p0}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p0

    const-string p1, " > length("

    const-string v0, ")"

    invoke-static {p2, p0, v1, p1, v0}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p0, "beginIndex="

    const-string p2, " < 0"

    invoke-static {p1, p0, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toAsciiLowercase()Lokio/ByteString;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final toByteArray()[B
    .locals 9

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

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

    sub-int/2addr v8, v6

    invoke-static {v7, v6, v0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toByteString()Lokio/ByteString;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write$external__okio__android_common__okio_lib(ILokio/Buffer;)V
    .locals 12

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokio/internal/-SegmentedByteString;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_2

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

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v2

    sub-int v3, v2, v3

    add-int v8, v3, v4

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v7, v3, v1

    new-instance v3, Lokio/Segment;

    add-int v9, v8, v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lokio/Segment;-><init>([BIIZZ)V

    iget-object v4, p2, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_1

    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, p2, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    :cond_1
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lokio/Segment;->push(Lokio/Segment;)V

    :goto_2
    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-wide v0, p2, Lokio/Buffer;->size:J

    int-to-long p0, p1

    add-long/2addr v0, p0

    iput-wide v0, p2, Lokio/Buffer;->size:J

    return-void
.end method
