.class final Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;
.super Lcom/android/framework/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapWriter"
.end annotation


# instance fields
.field private blacklist allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

.field private blacklist buffer:[B

.field private blacklist limit:I

.field private blacklist limitMinusOne:I

.field private blacklist offset:I

.field private blacklist offsetMinusOne:I

.field private blacklist pos:I


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    return-void
.end method

.method private blacklist nextBuffer()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private blacklist nextBuffer(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private blacklist nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->finishCurrentBuffer()V

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Allocator returned non-heap buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x15

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0xe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x3f

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x31

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x2a

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x23

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x15

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    ushr-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v4

    or-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method


# virtual methods
.method blacklist bytesWrittenToCurrentBuffer()I
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method blacklist finishCurrentBuffer()V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/AllocatedBuffer;->position(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    :cond_0
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist requireSpace(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    :cond_0
    return-void
.end method

.method blacklist spaceLeft()I
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist write(B)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public blacklist write([BII)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public blacklist writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeBool(Z)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeEndGroup(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeFixed32(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public blacklist writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed32(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed64(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeFixed64(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeInt32(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    :goto_0
    return-void
.end method

.method public blacklist writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeInt32(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public blacklist writeLazy([BII)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeSInt32(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    return-void
.end method

.method public blacklist writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt32(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt64(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeSInt64(J)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    :goto_0
    const/16 v1, 0x80

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v2, v0

    int-to-byte v4, v3

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    return-void

    :cond_1
    iget v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    :goto_1
    if-ltz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_2

    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v6, v3

    aput-byte v6, v4, v5

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v3, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_2

    :cond_3
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-ge v4, v3, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_7

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    invoke-static {v5, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/2addr v0, v2

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method blacklist writeTag(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    return-void
.end method

.method public blacklist writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    return-void
.end method

.method blacklist writeVarint32(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32OneByte(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FiveBytes(I)V

    :goto_0
    return-void
.end method

.method blacklist writeVarint64(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64NineBytes(J)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64EightBytes(J)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SevenBytes(J)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SixBytes(J)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FiveBytes(J)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FourBytes(J)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64ThreeBytes(J)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TwoBytes(J)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64OneByte(J)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
