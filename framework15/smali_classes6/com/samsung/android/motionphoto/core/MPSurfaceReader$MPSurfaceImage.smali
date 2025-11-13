.class public Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
.super Ljava/lang/Object;
.source "MPSurfaceReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/core/MPSurfaceReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MPSurfaceImage"
.end annotation


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist buffer:Landroid/hardware/HardwareBuffer;

.field private blacklist dataSpace:I

.field private blacklist fd:I

.field private final blacklist format:I

.field private final blacklist isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist nativeBufferItemContext:J

.field final synthetic blacklist this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

.field private blacklist timestamp:J


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$000(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;Landroid/hardware/HardwareBuffer;JII)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    iput-wide p3, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    iput p5, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    iput p6, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    invoke-static {p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$000(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    return-void
.end method

.method private blacklist bufferToString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    const-string v0, "n/a"

    return-object v0

    :cond_0
    const-string v0, "n/a"

    nop

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@%d[#0x%s: w=%d, h=%d, fmt=%d]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v0, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-virtual {v0, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->releaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getDataSpace()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    return v0
.end method

.method public blacklist getFd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    return v0
.end method

.method public blacklist getFence()Landroid/hardware/SyncFence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFormat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    return v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-static {v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$200(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result v0

    nop

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x1005 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist getOwner()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    .locals 0

    return-object p0
.end method

.method public blacklist getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-static {v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$100(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result v0

    nop

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x1005 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setDataSpace(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    return-void
.end method

.method public blacklist setFd(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    return-void
.end method

.method public blacklist setFence(Landroid/hardware/SyncFence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPSurfaceImage=: context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->nativeBufferItemContext:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->bufferToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": dataSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
