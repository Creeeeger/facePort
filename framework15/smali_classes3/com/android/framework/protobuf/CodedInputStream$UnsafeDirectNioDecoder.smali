.class final Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final blacklist address:J

.field private final blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist currentLimit:I

.field private blacklist enableAliasing:Z

.field private final blacklist immutable:Z

.field private blacklist lastTag:I

.field private blacklist limit:J

.field private blacklist pos:J

.field private blacklist startPos:J


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    iput-boolean p2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;ZLcom/android/framework/protobuf/CodedInputStream$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private blacklist bufferPos(J)I
    .locals 2

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method static blacklist isSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .locals 5

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    :goto_0
    return-void
.end method

.method private blacklist remaining()I
    .locals 4

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private blacklist skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    :goto_0
    return-void
.end method

.method private blacklist skipRawVarintFastPath()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipRawVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist slice(JJ)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p3, p4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    throw v3
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist enableAliasing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLastTag()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .locals 4

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist isAtEnd()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist popLimit(I)V
    .locals 0

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public blacklist pushLimit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v1

    :cond_0
    new-array v1, v0, [B

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v7, 0x0

    int-to-long v9, v0

    move-object v6, v1

    invoke-static/range {v4 .. v10}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2

    :cond_0
    new-array v1, v0, [B

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v6, 0x0

    int-to-long v8, v0

    move-object v5, v1

    invoke-static/range {v3 .. v9}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(I",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    return-object v0
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    return-void
.end method

.method public blacklist readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawBytes(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    new-array v0, p1, [B

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    :cond_0
    if-gtz p1, :cond_2

    if-nez p1, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readRawVarint32()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    if-ltz v0, :cond_1

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return v1

    :cond_1
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3

    xor-int/lit8 v0, v1, -0x80

    goto/16 :goto_1

    :cond_3
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    move-wide v6, v4

    goto/16 :goto_1

    :cond_4
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_5
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v6, v0, 0x1c

    xor-int/2addr v1, v6

    const v6, 0xfe03f80

    xor-int/2addr v1, v6

    if-gez v0, :cond_b

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_a

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_9

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_8

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_7

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-gez v2, :cond_6

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    move-wide v6, v4

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v1

    move-wide v6, v4

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v1

    move-wide v6, v4

    :goto_1
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return v0
.end method

.method public blacklist readRawVarint64()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    if-ltz v0, :cond_1

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, v1

    return-wide v2

    :cond_1
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3

    xor-int/lit8 v0, v1, -0x80

    int-to-long v2, v0

    goto/16 :goto_1

    :cond_3
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move-wide v6, v4

    goto/16 :goto_1

    :cond_4
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v2, v0

    goto/16 :goto_1

    :cond_5
    int-to-long v4, v1

    add-long v8, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_6

    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v2, v6

    move-wide v6, v8

    goto/16 :goto_1

    :cond_6
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x23

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_7

    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    goto :goto_1

    :cond_7
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v10

    if-ltz v0, :cond_8

    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v2, v6

    move-wide v6, v8

    goto :goto_1

    :cond_8
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x31

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_9

    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    goto :goto_1

    :cond_9
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-gez v0, :cond_b

    add-long v6, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_a

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move-wide v2, v4

    goto :goto_1

    :cond_b
    move-wide v2, v4

    move-wide v6, v8

    :goto_1
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-wide v2
.end method

.method blacklist readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public blacklist readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_2
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public blacklist resetSizeCounter()V
    .locals 2

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    return-void
.end method

.method public blacklist skipField(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v2

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    nop

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    return v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v2

    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v2

    :pswitch_5
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    nop

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    return v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist skipRawBytes(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
