.class public Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
.super Ljava/lang/Object;
.source "CameraExtensionForwardProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;
    }
.end annotation


# static fields
.field private static final blacklist FORWARD_QUEUE_SIZE:I = 0x3

.field public static final blacklist TAG:Ljava/lang/String; = "CameraExtensionForward"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIntermediateReader:Landroid/media/ImageReader;

.field private blacklist mIntermediateSurface:Landroid/view/Surface;

.field private blacklist mOutputAbandoned:Z

.field private blacklist mOutputSurface:Landroid/view/Surface;

.field private final blacklist mOutputSurfaceFormat:I

.field private final blacklist mOutputSurfaceUsage:J

.field private blacklist mOutputWriter:Landroid/media/ImageWriter;

.field private final blacklist mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

.field private blacklist mResolution:Landroid/util/Size;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/media/ImageWriter;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;IJLandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurface:Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    iput-wide p3, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceUsage:J

    iput p2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceFormat:I

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist initializePipeline()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceUsage:J

    const/16 v4, 0x23

    const/4 v5, 0x3

    invoke-static/range {v2 .. v7}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;

    invoke-direct {v2, p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback-IA;)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceFormat:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->onImageFormatUpdate(I)V

    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    invoke-interface {v1, v0}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    :cond_1
    return-void
.end method

.method public blacklist onImageFormatUpdate(I)V
    .locals 2

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

    const-string v1, "CameraExtensionForward"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist onOutputSurface(Landroid/view/Surface;I)V
    .locals 3

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurface:Landroid/view/Surface;

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->initializePipeline()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraExtensionForward"

    const-string v2, "Failed to initialize forward processor, extension service does not respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onResolutionUpdate(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    return-void
.end method

.method public blacklist process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2, p3}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/impl/CameraMetadataNative;ILandroid/hardware/camera2/extension/IProcessResultImpl;)V

    :cond_0
    return-void
.end method
