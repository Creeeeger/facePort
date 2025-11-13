.class public final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.super Landroid/hardware/camera2/CameraExtensionSession;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraAdvancedExtensionSessionImpl"


# instance fields
.field private blacklist mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private final blacklist mCameraConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private blacklist mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final blacklist mCharacteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientCaptureOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private blacklist mClientCaptureSurface:Landroid/view/Surface;

.field private blacklist mClientPostviewOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private blacklist mClientPostviewSurface:Landroid/view/Surface;

.field private blacklist mClientRepeatingRequestOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private blacklist mClientRepeatingRequestSurface:Landroid/view/Surface;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExtensionType:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

.field private blacklist mInitialized:Z

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mReaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

.field private blacklist mSessionClosed:Z

.field private final blacklist mSessionId:I

.field private blacklist mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

.field private final blacklist mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$3YZY2YAYnctBQXfroyjOhJaF36A(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->lambda$release$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MyEH403Zk6srKDOWjRpz3Pvx9XU(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->lambda$notifyConfigurationFailure$1()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtensionType(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsAggregator(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->notifyConfigurationFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/os/IBinder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/os/IBinder;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCharacteristicsMap:Ljava/util/Map;

    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {p7}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraAdvancedExtensionSessionImpl"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionClosed:Z

    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    iput p10, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionId:I

    iput-object p11, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget-object v0, p3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    iput p12, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    new-instance v0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    return-void
.end method

.method public static blacklist createCameraAdvancedExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/params/ExtensionSessionConfiguration;",
            "I",
            "Landroid/os/IBinder;",
            ")",
            "Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-direct {v1, v15, v0, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    nop

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    invoke-static {v3, v4, v14}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_15

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v5

    const-string v6, "Unsupported dynamic range profile: "

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraExtensionsCharacteristicsGet()Z

    move-result v5

    if-eqz v5, :cond_1

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v5

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5, v7}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->get(ILandroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->getSupportedProfiles()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported stream use case: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v3, 0x0

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    const-class v5, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v13

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v13}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;

    move-result-object v12

    const/4 v4, 0x0

    if-eqz v12, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v7, v12, :cond_5

    move-object v4, v6

    :cond_5
    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v16, v4

    goto :goto_3

    :cond_7
    move-object/from16 v16, v4

    :goto_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v11, v4

    new-instance v4, Landroid/util/IntArray;

    sget-object v5, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    array-length v5, v5

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    move-object v10, v4

    sget-object v4, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    invoke-virtual {v10, v4}, Landroid/util/IntArray;->addAll([I)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x36

    invoke-virtual {v10, v4}, Landroid/util/IntArray;->add(I)V

    :cond_8
    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_a

    aget v8, v4, v7

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v9

    invoke-virtual {v1, v9, v8}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v11}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;

    move-result-object v9

    const/4 v5, 0x0

    if-eqz v9, :cond_e

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v8

    if-ne v8, v9, :cond_b

    move-object v5, v7

    :cond_b
    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    move-result v6

    if-eqz v6, :cond_d

    nop

    invoke-static {v9}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v6

    iget v4, v6, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    move v8, v3

    move v7, v4

    move-object/from16 v18, v5

    goto :goto_6

    :cond_d
    move v8, v3

    move v7, v4

    move-object/from16 v18, v5

    goto :goto_6

    :cond_e
    move v8, v3

    move v7, v4

    move-object/from16 v18, v5

    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v8, v3, :cond_14

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v19

    if-eqz v9, :cond_12

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    if-eqz v4, :cond_12

    nop

    invoke-static {v9}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v4

    new-instance v5, Landroid/util/Size;

    iget v6, v4, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v2, v4, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v5, v6, v2}, Landroid/util/Size;-><init>(II)V

    move-object v2, v5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    move-object/from16 v20, v3

    array-length v3, v6

    move/from16 v21, v7

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v3, :cond_10

    move/from16 v17, v3

    aget v3, v6, v7

    nop

    move-object/from16 v22, v6

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    invoke-virtual {v1, v6, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getPostviewSupportedSizes(ILandroid/util/Size;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_f

    move-object/from16 v23, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    move-object/from16 v23, v1

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move-object/from16 v6, v22

    move-object/from16 v1, v23

    goto :goto_7

    :cond_10
    move-object/from16 v23, v1

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    iget v3, v4, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    invoke-static {v1, v5, v3}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getPostviewSurface(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/util/HashMap;I)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v20, v3

    goto :goto_9

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported output surface for postview!"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v21, v7

    :goto_9
    nop

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v1

    invoke-interface {v1, v0, v14}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v24

    move-object v3, v2

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v6, p0

    move-object/from16 v25, v0

    move/from16 v0, v21

    move-object v7, v14

    move/from16 v21, v8

    move-object/from16 v8, v16

    move-object/from16 v26, v9

    move-object/from16 v9, v18

    move-object/from16 v27, v10

    move-object/from16 v10, v19

    move-object/from16 v28, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v13

    move/from16 v13, p4

    move-object/from16 v29, v14

    move-object/from16 v14, p5

    move/from16 v15, v24

    invoke-direct/range {v3 .. v15}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/os/IBinder;I)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setCaptureFormat(I)V

    :cond_13
    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setClientName(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setExtensionType(I)V

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initialize()V

    return-object v2

    :cond_14
    move-object/from16 v23, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more unsupported output surfaces found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move-object/from16 v25, v0

    move-object/from16 v23, v1

    move-object/from16 v29, v14

    goto :goto_a

    :cond_16
    move-object/from16 v25, v0

    move-object/from16 v23, v1

    move-object/from16 v29, v14

    :goto_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected amount of output surfaces, received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected <= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v25, v0

    move-object/from16 v23, v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported extension type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist initializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroid/hardware/camera2/extension/Request;",
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget v0, p1, Landroid/hardware/camera2/extension/Request;->templateId:I

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/OutputConfigId;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v6, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v6, v6, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    iget v7, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    if-ne v6, v7, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface with output id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found among registered camera outputs!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraAdvancedExtensionSessionImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/hardware/camera2/extension/Request;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/camera2/extension/Request;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v1
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;
    .locals 8

    new-instance v0, Landroid/hardware/camera2/extension/OutputSurface;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputSurface;-><init>()V

    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    new-instance v5, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v5}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v5, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    iget-object v6, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v6, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    iput v6, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v2

    iput v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    :goto_0
    goto :goto_1

    :cond_1
    iput-wide v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    iput v3, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    new-instance v4, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iget-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iput v3, v4, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iput v3, v4, Landroid/hardware/camera2/extension/Size;->height:I

    const/4 v4, 0x0

    iput v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    iput-wide v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    iput v3, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    :goto_2
    return-object v0
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .locals 3

    new-instance v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelCaptureResult;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    return-object v0
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .locals 8

    new-instance v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    iget-object v3, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v4, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    new-instance v5, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private blacklist initializeSurface(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;
    .locals 7

    iget v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    const/4 v1, 0x0

    const-string v2, ", skipping!"

    const-string v3, "Unsupported client output id: "

    const-string v4, "CameraAdvancedExtensionSessionImpl"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output config type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->height:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v2, v0, Landroid/hardware/camera2/extension/Size;->height:I

    iget v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    iget v4, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    iget-wide v5, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->usage:J

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v2, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v3, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_1
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v3, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic blacklist lambda$notifyConfigurationFailure$1()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$release$0()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private blacklist notifyConfigurationFailure()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist validateCaptureRequestTargets(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 7

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v1, "Target output combination requested is not supported!"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    new-array v5, v4, [Landroid/view/Surface;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    aput-object v6, v5, v2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    aput-object v2, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v4, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p1

    const/4 v10, -0x1

    iget-object v11, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->validateCaptureRequestTargets(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/4 v12, 0x3

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1, v9}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v13, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v14, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V

    invoke-interface {v13, v14, v0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v10, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "Failed  to submit capture request, extension service failed to respond!"

    invoke-direct {v1, v12, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v13, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V

    invoke-interface {v0, v9, v13}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v0

    :goto_0
    :try_start_4
    monitor-exit v11

    return v10

    :catch_1
    move-exception v0

    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "Failed  to submit trigger request, extension service failed to respond!"

    invoke-direct {v1, v12, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid single capture output target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->stopRepeating()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->onCaptureSessionEnd()V

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionClosed:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    const-string v3, "CameraAdvancedExtensionSessionImpl"

    const-string v4, "Failed to stop the repeating request or end the session, , extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist commitStats()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRealtimeStillCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;

    iget-wide v3, v1, Landroid/hardware/camera2/extension/LatencyPair;->first:J

    iget-wide v5, v1, Landroid/hardware/camera2/extension/LatencyPair;->second:J

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;-><init>(JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Failed to query realtime latency! Extension service does not respond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized blacklist initialize()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Session already initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v6

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v7

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v8

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v0

    iput-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCharacteristicsMap:Ljava/util/Map;

    invoke-interface/range {v2 .. v8}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v0

    iget-object v2, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v1, v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeSurface(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance v11, Landroid/hardware/camera2/params/OutputConfiguration;

    iget v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    invoke-direct {v11, v12, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    iget-boolean v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    :cond_2
    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    if-eqz v12, :cond_4

    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v1, v13}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeSurface(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;

    move-result-object v14

    if-nez v14, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_1

    :cond_4
    invoke-virtual {v11, v9}, Landroid/hardware/camera2/params/OutputConfiguration;->setTimestampBase(I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/params/OutputConfiguration;->setReadoutTimestampEnabled(Z)V

    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    const-wide/16 v13, 0x1

    :goto_2
    const-wide/16 v15, 0x1000

    cmp-long v15, v13, v15

    if-gez v15, :cond_6

    move-object/from16 v16, v10

    iget-wide v9, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    cmp-long v9, v9, v13

    if-nez v9, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x1

    shl-long/2addr v13, v9

    move-object/from16 v10, v16

    goto :goto_2

    :cond_6
    move-object/from16 v16, v10

    :goto_3
    if-eqz v12, :cond_7

    iget-wide v9, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    invoke-virtual {v11, v9, v10}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V

    goto :goto_4

    :cond_7
    const-string v9, "CameraAdvancedExtensionSessionImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extension configured dynamic range profile "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v13, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " is not valid, using default DynamicRangeProfile.STANDARD"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move-object/from16 v16, v10

    :goto_4
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    iget v5, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_a

    iget v5, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_a

    iget v5, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    move v4, v5

    const-string v5, "CameraAdvancedExtensionSessionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using session type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v5, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v9, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v10}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v10, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler-IA;)V

    invoke-direct {v5, v4, v3, v9, v10}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v9

    if-eqz v9, :cond_c

    iget v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    if-ltz v9, :cond_b

    iget v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_b

    nop

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v9

    iget v10, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Landroid/hardware/camera2/params/SessionConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    goto :goto_5

    :cond_b
    const-string v9, "CameraAdvancedExtensionSessionImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Extension configured color space "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not valid, using default unspecified color space"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_5
    iget-object v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz v9, :cond_d

    iget-object v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget v10, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    iget-object v12, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v11, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v5, v10}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_d
    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v9, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist release(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionClosed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->onCaptureSessionEnd()V

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->deInitSession(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "CameraAdvancedExtensionSessionImpl"

    const-string v5, "Failed to de-initialize session processor, extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    iget v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    invoke-static {v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->releaseSession(I)V

    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    invoke-static {v2, v4, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v10, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V

    invoke-interface {v2, v10}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    nop

    :try_start_2
    monitor-exit v1

    return v0

    :catch_0
    move-exception v2

    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Failed to enable repeating request, extension service failed to respond!"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid repeating request output target!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No registered preview surface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Uninitialized component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist stopRepeating()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->stopRepeating()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Failed to notify about the end of repeating request, extension service failed to respond!"

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
