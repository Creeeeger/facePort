.class public final Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;
.super Ljava/lang/Object;
.source "SurfaceChannelImpl.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;
.implements Lcom/samsung/android/sume/core/channel/SurfaceChannel;


# static fields
.field private static final blacklist HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SPN:I = 0x123

.field private static final blacklist HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SP_M:I = 0x105

.field private static final blacklist HAL_PIXEL_FORMAT_YCbCr_420_SP_VENUS:I = 0x7fa30c04

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist vendorSpecificColorFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ColorFormat;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private blacklist capacity:I

.field private final blacklist channelType:I

.field private final blacklist condition:Ljava/util/concurrent/locks/Condition;

.field private final blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private blacklist pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

.field private blacklist processedFrames:I

.field private blacklist reader:Landroid/media/ImageReader;

.field private final blacklist receiveHandler:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist receiveThread:Landroid/os/HandlerThread;

.field private final blacklist sendHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist writer:Landroid/media/ImageWriter;


# direct methods
.method public static synthetic blacklist $r8$lambda$1sgmPXzM_ONxihKYwsI3dFOGlic(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageTransit(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7HcNNAtUt1ruoaSsMDi9ksCY4L0(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageReceive(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jwO2sgHW6NmMIDZKyeSI6dxFs3M(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writeToSurface(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->vendorSpecificColorFormat:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(ILcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    iput p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$new$2()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$3(Landroid/media/ImageReader;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$onImageReceive$4(Landroid/hardware/HardwareBuffer;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$onImageReceive$5(Landroid/hardware/HardwareBuffer;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method private blacklist onImageReceive(Landroid/media/ImageReader;)V
    .locals 6

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v3, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->vendorSpecificColorFormat:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda11;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    :cond_0
    sget-object v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fmt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], usage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/sume/core/format/Shape;->rectOf(II)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    const-class v3, Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestampNs"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "block-id"

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received image="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # of processed frames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void
.end method

.method private blacklist onImageTransit(Landroid/media/ImageReader;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    if-nez v0, :cond_0

    const-string v0, "writer is given"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received image="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", # of processed frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v1, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    return-void
.end method

.method private blacklist signal()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist waitUntilSignaled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blacklist writeToSurface(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    if-nez v0, :cond_0

    const-string v0, "writer given"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    :cond_0
    const-string v0, "timestampNs"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v2}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/media/Image;->setTimestamp(J)V

    invoke-virtual {v2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyFromBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/hardware/HardwareBuffer;)V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    iget-object v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v3, v2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    sget-object v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send image="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", # of processed frames: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public blacklist close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public blacklist configure(III)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "surface-receive-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    add-int/2addr v2, v0

    :cond_1
    move v0, v2

    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist configure(Landroid/view/Surface;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    add-int/2addr v2, v0

    :cond_1
    move v0, v2

    invoke-static {p1, v0}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    return-void
.end method

.method public blacklist getNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isClosedForReceive()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isClosedForSend()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-channel-SurfaceChannelImpl(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    return-void
.end method

.method synthetic blacklist lambda$new$1$com-samsung-android-sume-core-channel-SurfaceChannelImpl()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    const-string v0, "receive buffer"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method public blacklist setCapacity(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    iput p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->capacity:I

    return-void
.end method

.method public blacklist setNumberOfFrames(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
