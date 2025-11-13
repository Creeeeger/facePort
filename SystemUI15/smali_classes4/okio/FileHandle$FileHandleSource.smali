.class public final Lokio/FileHandle$FileHandleSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokio/Source;


# instance fields
.field public closed:Z

.field public final fileHandle:Lokio/FileHandle;

.field public position:J


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    iput-wide p2, p0, Lokio/FileHandle$FileHandleSource;->position:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->closed:Z

    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    iget-object v0, v0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

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

    iget-object p0, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

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

.method public final read(Lokio/Buffer;J)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-boolean v4, v0, Lokio/FileHandle$FileHandleSource;->closed:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_5

    iget-object v4, v0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    iget-wide v12, v0, Lokio/FileHandle$FileHandleSource;->position:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_4

    add-long/2addr v2, v12

    move-wide v14, v12

    :goto_0
    cmp-long v6, v14, v2

    const-wide/16 v16, -0x1

    if-gez v6, :cond_2

    invoke-virtual {v1, v5}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v11

    iget v7, v11, Lokio/Segment;->limit:I

    sub-long v8, v2, v14

    rsub-int v6, v7, 0x2000

    int-to-long v5, v6

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v8, v5

    iget-object v5, v11, Lokio/Segment;->data:[B

    move-object v6, v4

    move-wide v9, v14

    move-wide/from16 p2, v2

    move-object v2, v11

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lokio/FileHandle;->protectedRead(IIJ[B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    iget v3, v2, Lokio/Segment;->pos:I

    iget v4, v2, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_0
    cmp-long v1, v12, v14

    if-nez v1, :cond_2

    move-wide/from16 v14, v16

    goto :goto_1

    :cond_1
    iget v5, v2, Lokio/Segment;->limit:I

    add-int/2addr v5, v3

    iput v5, v2, Lokio/Segment;->limit:I

    int-to-long v2, v3

    add-long/2addr v14, v2

    iget-wide v5, v1, Lokio/Buffer;->size:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lokio/Buffer;->size:J

    move-wide/from16 v2, p2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    sub-long/2addr v14, v12

    :goto_1
    cmp-long v1, v14, v16

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lokio/FileHandle$FileHandleSource;->position:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lokio/FileHandle$FileHandleSource;->position:J

    :cond_3
    return-wide v14

    :cond_4
    const-string v0, "byteCount < 0: "

    invoke-static {v0, v2, v3}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout$Companion$NONE$1;

    return-object p0
.end method
