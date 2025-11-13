.class public final Lokio/FileHandle$FileHandleSink;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokio/Sink;


# instance fields
.field public closed:Z

.field public final fileHandle:Lokio/FileHandle;

.field public position:J


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/FileHandle$FileHandleSink;->fileHandle:Lokio/FileHandle;

    iput-wide p2, p0, Lokio/FileHandle$FileHandleSink;->position:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/FileHandle$FileHandleSink;->closed:Z

    iget-object v0, p0, Lokio/FileHandle$FileHandleSink;->fileHandle:Lokio/FileHandle;

    iget-object v0, v0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lokio/FileHandle$FileHandleSink;->fileHandle:Lokio/FileHandle;

    iget v2, v1, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lokio/FileHandle;->openStreamCount:I

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lokio/FileHandle;->closed:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Lokio/FileHandle$FileHandleSink;->fileHandle:Lokio/FileHandle;

    invoke-virtual {p0}, Lokio/FileHandle;->protectedClose()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokio/FileHandle$FileHandleSink;->fileHandle:Lokio/FileHandle;

    invoke-virtual {p0}, Lokio/FileHandle;->protectedFlush()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout$Companion$NONE$1;

    return-object p0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lokio/FileHandle$FileHandleSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v9, v0, Lokio/FileHandle$FileHandleSink;->fileHandle:Lokio/FileHandle;

    iget-wide v10, v0, Lokio/FileHandle$FileHandleSink;->position:J

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    add-long v12, v10, p2

    :cond_0
    :goto_0
    cmp-long v2, v10, v12

    if-gez v2, :cond_1

    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long v3, v12, v10

    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v14, v3

    iget-object v8, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->pos:I

    move-object v3, v9

    move v5, v14

    move-wide v6, v10

    invoke-virtual/range {v3 .. v8}, Lokio/FileHandle;->protectedWrite(IIJ[B)V

    iget v3, v2, Lokio/Segment;->pos:I

    add-int/2addr v3, v14

    iput v3, v2, Lokio/Segment;->pos:I

    int-to-long v4, v14

    add-long/2addr v10, v4

    iget-wide v6, v1, Lokio/Buffer;->size:J

    sub-long/2addr v6, v4

    iput-wide v6, v1, Lokio/Buffer;->size:J

    iget v4, v2, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lokio/FileHandle$FileHandleSink;->position:J

    add-long v1, v1, p2

    iput-wide v1, v0, Lokio/FileHandle$FileHandleSink;->position:J

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
