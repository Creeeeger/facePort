.class public final Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;
.super Ljava/lang/Object;
.source "SurfaceChannelImpl.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;
.implements Lcom/samsung/android/sume/core/channel/SurfaceChannel;


# static fields
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
.method public static synthetic blacklist $r8$lambda$AChjb6Bsau1pB6LfpZMxWbzpiII(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageReceive(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gNhEsV8z6OPis_66wo-bN9h0PNM(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageTransit(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mxNo79ZOgZeHfyzNLkHWUHVemPI(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writeToSurface(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->vendorSpecificColorFormat:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(ILcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 2
    .param p1, "channelType"    # I
    .param p2, "bufferChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelType",
            "bufferChannel"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    .line 60
    iput p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    .line 65
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    .line 69
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 70
    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    .line 80
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    .line 81
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda14;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 82
    goto :goto_0

    .line 72
    :pswitch_2
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 73
    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 74
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    .line 75
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    .line 76
    new-instance v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 77
    nop

    .line 86
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

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$3(Landroid/media/ImageReader;)V
    .locals 2
    .param p0, "imageReader"    # Landroid/media/ImageReader;

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$onImageReceive$4(Landroid/hardware/HardwareBuffer;I)Z
    .locals 1
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "e"    # I

    .line 156
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
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorFormatEntry"    # Ljava/util/Map$Entry;

    .line 156
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method private blacklist onImageReceive(Landroid/media/ImageReader;)V
    .locals 7
    .param p1, "reader"    # Landroid/media/ImageReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 150
    .local v0, "image":Landroid/media/Image;
    sget-object v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received image="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", # of processed frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->processedFrames:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 153
    .local v2, "hwBuffer":Landroid/hardware/HardwareBuffer;
    if-eqz v2, :cond_1

    .line 154
    iget-object v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    sget-object v5, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v3, v5, :cond_0

    .line 155
    sget-object v3, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->vendorSpecificColorFormat:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/HardwareBuffer;)V

    .line 156
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 157
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 158
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;-><init>()V

    .line 159
    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/types/ColorFormat;

    iput-object v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 161
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "], usage="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v5, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    aput-object v5, v1, v3

    .line 164
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Lcom/samsung/android/sume/core/format/Shape;->rectOf(II)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->pixelFormat:Lcom/samsung/android/sume/core/types/ColorFormat;

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v1

    .line 163
    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    const-class v3, Ljava/nio/ByteBuffer;

    .line 166
    invoke-interface {v1, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 168
    .local v1, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "timestampNs"

    invoke-interface {v1, v4, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 171
    .end local v1    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 172
    return-void
.end method

.method private blacklist onImageTransit(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "writer is given"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 142
    .local v0, "image":Landroid/media/Image;
    sget-object v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received image="

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

    .line 144
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v1, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    .line 146
    return-void
.end method

.method private blacklist signal()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    nop

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    throw v0
.end method

.method private blacklist waitUntilSignaled(Ljava/lang/String;)V
    .locals 3
    .param p1, "waitMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waitMessage"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 111
    :try_start_0
    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 113
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

    .line 117
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    throw v0
.end method

.method private blacklist writeToSurface(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 7
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    if-nez v1, :cond_0

    .line 178
    const-string/jumbo v1, "writer given"

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    .line 180
    :cond_0
    const-string/jumbo v1, "timestampNs"

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 181
    .local v1, "timestampNs":J
    iget-object v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v3

    .line 182
    .local v3, "image":Landroid/media/Image;
    invoke-virtual {v3, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    .line 184
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyTo(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Landroid/hardware/HardwareBuffer;)V

    .line 185
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 187
    iget-object v4, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    invoke-virtual {v4, v3}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send image="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    div-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 217
    :cond_1
    return-void
.end method

.method public blacklist close()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 208
    :cond_1
    return-void
.end method

.method public blacklist configure(III)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format"
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "surface-receive-thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-static {p1, p2, p3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    .line 97
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 98
    return-void
.end method

.method public blacklist configure(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 104
    invoke-static {p1, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->writer:Landroid/media/ImageWriter;

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    .line 106
    return-void
.end method

.method public blacklist getNumberOfFrames()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 2

    .line 132
    iget v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->channelType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isClosedForReceive()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda0;-><init>()V

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

    .line 221
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->bufferChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda2;-><init>()V

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
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->signal()V

    return-void
.end method

.method synthetic blacklist lambda$new$1$com-samsung-android-sume-core-channel-SurfaceChannelImpl()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 66
    const-string/jumbo v0, "receive buffer"

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->waitUntilSignaled(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receiveHandler:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->sendHandler:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 33
    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method public blacklist setNumberOfFrames(I)V
    .locals 1
    .param p1, "numberOfFrames"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberOfFrames"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->numberOfFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 237
    return-void
.end method
