.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bytesReceived:J

.field public final size:J

.field public final truncate:Z


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .locals 0

    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    iput-wide p2, p0, Lokio/internal/FixedLengthSource;->size:J

    iput-boolean p4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    return-void
.end method


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .locals 9

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v2, p0, Lokio/internal/FixedLengthSource;->size:J

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    if-lez v4, :cond_0

    move-wide p2, v7

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    if-eqz v4, :cond_2

    sub-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-nez v0, :cond_1

    return-wide v5

    :cond_1
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :cond_2
    :goto_0
    iget-object v0, p0, Lokio/ForwardingSource;->delegate:Lokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v5

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    :cond_3
    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v3, p0, Lokio/internal/FixedLengthSource;->size:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-lez v5, :cond_7

    :cond_5
    cmp-long p2, p2, v7

    if-lez p2, :cond_6

    if-lez v5, :cond_6

    iget-wide p2, p1, Lokio/Buffer;->size:J

    sub-long/2addr v1, v3

    sub-long/2addr p2, v1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeAll(Lokio/Source;)V

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    :cond_6
    new-instance p1, Ljava/io/IOException;

    iget-wide p2, p0, Lokio/internal/FixedLengthSource;->size:J

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    const-string p0, "expected "

    const-string v2, " bytes but got "

    invoke-static {p0, p2, p3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-wide p2
.end method
