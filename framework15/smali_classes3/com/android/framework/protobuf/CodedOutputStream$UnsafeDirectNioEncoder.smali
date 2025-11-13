.class final Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioEncoder"
.end annotation


# instance fields
.field private final blacklist address:J

.field private final blacklist buffer:Ljava/nio/ByteBuffer;

.field private final blacklist initialPosition:J

.field private final blacklist limit:J

.field private final blacklist oneVarintLimit:J

.field private final blacklist originalBuffer:Ljava/nio/ByteBuffer;

.field private blacklist position:J


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    return-void
.end method

.method private blacklist bufferPos(J)I
    .locals 2

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

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

.method private blacklist repositionBuffer(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .locals 4

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist spaceLeft()I
    .locals 4

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist write(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v6, p3

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory([BJJJ)V

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(B)V

    return-void
.end method

.method public blacklist writeByteArray(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeByteArray(I[BII)V

    return-void
.end method

.method public blacklist writeByteArray(I[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method public blacklist writeByteArrayNoTag([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    return-void
.end method

.method public blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method public blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method

.method public blacklist writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeFixed32NoTag(I)V

    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeFixed64NoTag(J)V

    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    return-void
.end method

.method public blacklist writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt64NoTag(J)V

    :goto_0
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist writeLazy([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    return-void
.end method

.method blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    return-void
.end method

.method blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method

.method public blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32(II)V

    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    return-void
.end method

.method public blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32(II)V

    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v5, v6}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v6}, Lcom/android/framework/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p0, v6}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    iget-wide v7, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v6, v7}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v6}, Lcom/android/framework/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J
    :try_end_0
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_0
    nop

    return-void
.end method

.method public blacklist writeTag(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-byte v0, p1

    invoke-static {v3, v4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    return-void

    :cond_0
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-byte v0, p1

    invoke-static {v3, v4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    return-void

    :cond_2
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt64NoTag(J)V

    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    cmp-long v0, v0, v2

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const-wide/16 v6, 0x1

    if-gtz v0, :cond_1

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    return-void

    :cond_0
    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v10, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    return-void

    :cond_2
    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    ushr-long/2addr p1, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
