.class final Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;
.super Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.source "SessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionProcessorImpl"
.end annotation


# instance fields
.field blacklist mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field private blacklist mVendorId:J

.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/SessionProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;-><init>(Landroid/hardware/camera2/extension/SessionProcessor;)V

    return-void
.end method


# virtual methods
.method public blacklist deInitSession(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->deInitSession(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->surfaceLeakFix()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_2
    return-void
.end method

.method public blacklist getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            ")",
            "Landroid/hardware/camera2/extension/CameraSessionConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->surfaceLeakFix()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-object p6, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-object p5, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v4, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v4, p3}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    new-instance v5, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v5, p4}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    new-instance v6, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v6, p5}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/extension/SessionProcessor;->initSession(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)Landroid/hardware/camera2/extension/ExtensionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    nop

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/extension/ExtensionConfiguration;->getCameraSessionConfig()Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid extension configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist onCaptureSessionEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->finishCameraOperation()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionEnd()V

    return-void
.end method

.method public blacklist onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->startCameraOperation()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor;

    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/camera2/extension/RequestProcessor;-><init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionStart(Landroid/hardware/camera2/extension/RequestProcessor;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public blacklist startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startMultiFrameCapture(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startRepeating(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p2, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist stopRepeating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->stopRepeating()V

    return-void
.end method
