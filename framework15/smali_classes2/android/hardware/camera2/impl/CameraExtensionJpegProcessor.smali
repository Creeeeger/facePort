.class public Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;,
        Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
    }
.end annotation


# static fields
.field private static final blacklist JPEG_APP_SEGMENT_SIZE:I = 0x10000

.field private static final blacklist JPEG_QUEUE_SIZE:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "CameraExtensionJpeg"


# instance fields
.field private blacklist mCaptureFormat:I

.field private blacklist mFormat:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputSurface:Landroid/view/Surface;

.field private blacklist mOutputWriter:Landroid/media/ImageWriter;

.field private blacklist mPostviewFormat:I

.field private blacklist mPostviewOutputSurface:Landroid/view/Surface;

.field private blacklist mPostviewOutputWriter:Landroid/media/ImageWriter;

.field private blacklist mPostviewResolution:Landroid/hardware/camera2/extension/Size;

.field private blacklist mPostviewYuvReader:Landroid/media/ImageReader;

.field private final blacklist mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

.field private blacklist mResolution:Landroid/hardware/camera2/extension/Size;

.field private blacklist mYuvReader:Landroid/media/ImageReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
    .locals 1

    invoke-static/range {p0 .. p18}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    move-result v0

    return v0
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraExtensionJpeg"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native blacklist compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
.end method

.method private static blacklist getJpegParameters(Ljava/util/List;)Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;)",
            "Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters-IA;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v2, v2, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    const-string v3, "CameraExtensionJpeg"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    goto :goto_0

    :cond_0
    const-string v4, "No jpeg quality set, using default: 100"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v1, v1, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    rsub-int v4, v4, 0x168

    div-int/lit8 v4, v4, 0x5a

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    goto :goto_1

    :cond_1
    const-string v4, "No jpeg rotation set, using default: 0"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v6, v5, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_2

    iget-object v7, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const-string v7, "Capture bundle without valid sensor timestamp!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private blacklist initializePipeline()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v3, v3, Landroid/hardware/camera2/extension/Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-static {v0, v3, v4, v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-static {v0, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-direct {v2, p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    :cond_1
    return-void
.end method

.method private blacklist initializePostviewPipeline()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    invoke-interface {v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v3, v3, Landroid/hardware/camera2/extension/Size;->height:I

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-static {v0, v3, v4, v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-static {v0, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    invoke-direct {v2, p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Binder IPC not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist close()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    :cond_1
    return-void
.end method

.method public blacklist onImageFormatUpdate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported input format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraExtensionJpeg"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    return-void
.end method

.method public blacklist onOutputSurface(Landroid/view/Surface;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x100

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported output format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraExtensionJpeg"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    return-void
.end method

.method public blacklist onPostviewOutputSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraExtensionJpeg"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePostviewPipeline()V

    return-void
.end method

.method public blacklist onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    return-void
.end method

.method public blacklist process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;",
            "Landroid/hardware/camera2/extension/IProcessResultImpl;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->getJpegParameters(Ljava/util/List;)Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    throw v1
.end method
