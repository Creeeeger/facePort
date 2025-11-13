.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokio/Source;


# instance fields
.field public bufferBytesHeldByInflater:I

.field public closed:Z

.field public final inflater:Ljava/util/zip/Inflater;

.field public final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/RealBufferedSource;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    iget-object p0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 7

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_d

    iget-boolean v3, p0, Lokio/InflaterSource;->closed:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_c

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v2, v0

    iput v2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v2, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    int-to-long v5, v0

    invoke-interface {v2, v5, v6}, Lokio/BufferedSource;->skip(J)V

    :goto_1
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_a

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v5, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v0, v0, Lokio/Segment;->data:[B

    invoke-virtual {v5, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_2
    :try_start_0
    invoke-virtual {p1, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v5, v0, Lokio/Segment;->data:[B

    iget v6, v0, Lokio/Segment;->limit:I

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_4

    iget p0, v0, Lokio/Segment;->limit:I

    add-int/2addr p0, v2

    iput p0, v0, Lokio/Segment;->limit:I

    iget-wide p2, p1, Lokio/Buffer;->size:J

    int-to-long v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lokio/Buffer;->size:J

    return-wide v0

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/io/EOFException;

    const-string/jumbo p1, "source exhausted prematurely"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    iget p2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    iget-object p3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr p3, p2

    iput p3, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object p0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    int-to-long p2, p2

    invoke-interface {p0, p2, p3}, Lokio/BufferedSource;->skip(J)V

    :goto_4
    iget p0, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p0, p2, :cond_9

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p0

    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    sget-object p0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {p0, v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    const-wide/16 p0, -0x1

    return-wide p0

    :goto_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "?"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
