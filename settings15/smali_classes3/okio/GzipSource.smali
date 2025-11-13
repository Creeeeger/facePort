.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final crc:Ljava/util/zip/CRC32;

.field public final inflater:Ljava/util/zip/Inflater;

.field public final inflaterSource:Lokio/InflaterSource;

.field public section:B

.field public final source:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/RealBufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static checkEqual(IILjava/lang/String;)V
    .locals 0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {p0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-string/jumbo v0, "sink"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_12

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-byte v0, v6, Lokio/GzipSource;->section:B

    const/4 v10, 0x1

    const-wide/16 v11, -0x1

    if-nez v0, :cond_d

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v13

    shr-int/lit8 v0, v13, 0x1

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_1

    move v14, v10

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-eqz v14, :cond_2

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_2
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readShort()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v2, v0, v1}, Lokio/GzipSource;->checkEqual(IILjava/lang/String;)V

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    shr-int/lit8 v0, v13, 0x2

    and-int/2addr v0, v10

    const v15, 0xff00

    const-wide/16 v4, 0x2

    if-ne v0, v10, :cond_5

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v14, :cond_3

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v16, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_3
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v0

    and-int v1, v0, v15

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    int-to-long v4, v0

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v14, :cond_4

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v16, v4

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v4

    :goto_1
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    :cond_5
    shr-int/lit8 v0, v13, 0x3

    and-int/2addr v0, v10

    const-wide/16 v16, 0x1

    if-ne v0, v10, :cond_8

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide v22, 0x7fffffffffffffffL

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v23}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v18

    cmp-long v0, v18, v11

    if-eqz v0, :cond_7

    if-eqz v14, :cond_6

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    add-long v4, v18, v16

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_6
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    add-long v1, v18, v16

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_2
    shr-int/lit8 v0, v13, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_b

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide v22, 0x7fffffffffffffffL

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v23}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v18

    cmp-long v0, v18, v11

    if-eqz v0, :cond_a

    if-eqz v14, :cond_9

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    add-long v4, v18, v16

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_9
    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    add-long v1, v18, v16

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b
    :goto_3
    if-eqz v14, :cond_c

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v0

    and-int v1, v0, v15

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iget-object v1, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-static {v0, v1, v2}, Lokio/GzipSource;->checkEqual(IILjava/lang/String;)V

    iget-object v0, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_c
    iput-byte v10, v6, Lokio/GzipSource;->section:B

    :cond_d
    iget-byte v0, v6, Lokio/GzipSource;->section:B

    const/4 v1, 0x2

    if-ne v0, v10, :cond_f

    iget-wide v2, v7, Lokio/Buffer;->size:J

    iget-object v0, v6, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0, v7, v8, v9}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v8

    cmp-long v0, v8, v11

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    return-wide v8

    :cond_e
    iput-byte v1, v6, Lokio/GzipSource;->section:B

    :cond_f
    iget-byte v0, v6, Lokio/GzipSource;->section:B

    if-ne v0, v1, :cond_11

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-static {v0, v1, v2}, Lokio/GzipSource;->checkEqual(IILjava/lang/String;)V

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, v6, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-static {v0, v1, v2}, Lokio/GzipSource;->checkEqual(IILjava/lang/String;)V

    const/4 v0, 0x3

    iput-byte v0, v6, Lokio/GzipSource;->section:B

    iget-object v0, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_4
    return-wide v11

    :cond_12
    const-string v0, "byteCount < 0: "

    invoke-static {v8, v9, v0}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final updateCrc(Lokio/Buffer;JJ)V
    .locals 5

    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :goto_0
    iget v1, p1, Lokio/Segment;->limit:I

    iget v2, p1, Lokio/Segment;->pos:I

    sub-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_3

    iget v3, p1, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    iget p3, p1, Lokio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    iget-object v3, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, p1, Lokio/Segment;->data:[B

    invoke-virtual {v3, v4, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    if-eqz p1, :cond_2

    move-wide p2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method
