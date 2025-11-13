.class public final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final input:Ljava/io/InputStream;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    if-ltz v2, :cond_6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Timeout;->throwIfReached()V

    invoke-virtual {p1, v0}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v1

    iget v2, v1, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    iget-object p3, v1, Lokio/Segment;->data:[B

    iget v2, v1, Lokio/Segment;->limit:I

    invoke-virtual {p0, p3, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    iget p0, v1, Lokio/Segment;->pos:I

    iget p2, v1, Lokio/Segment;->limit:I

    if-ne p0, p2, :cond_1

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p0

    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_2
    iget p2, v1, Lokio/Segment;->limit:I

    add-int/2addr p2, p0

    iput p2, v1, Lokio/Segment;->limit:I

    iget-wide p2, p1, Lokio/Buffer;->size:J

    int-to-long v1, p0

    add-long/2addr p2, v1

    iput-wide p2, p1, Lokio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :goto_1
    sget-object p1, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p3, "getsockname failed"

    invoke-static {p1, p3, p2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, p2

    :goto_3
    if-eqz v0, :cond_5

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    throw p0

    :cond_6
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
