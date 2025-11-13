.class Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
.source "StapleBufferAllocator.java"


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;)V

    return-void
.end method

.method private blacklist allocAsByteBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->bytePerPixel()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist allocAsNumber()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented alloc data-type yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented alloc yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocAsNumber()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocAsByteBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist allocate(Lcom/samsung/android/sume/core/buffer/Align;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/Align;->set(II)Lcom/samsung/android/sume/core/buffer/Align;

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/Align;->adjustAlign()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    return-object v0
.end method

.method blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    const-string v1, "file-descriptor"

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/buffer/Align;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
