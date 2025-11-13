.class public Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;
.super Landroid/hardware/IRemoteDevice$Stub;
.source "DeviceInjectorSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInjectorRemoteDevice"
.end annotation


# static fields
.field private static final blacklist BINDER_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final blacklist mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$7zhel8T4qBrlCDArEEJL_Tu715Y(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$createDefaultRequest$5(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CSIVb7IpFLdWGCcpuB6yF67kcXU(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$clearRequest$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$D6EesRArT2Qm1QXZRjGDRdnY5Hk(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$open$1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$IAj5jtCDDNQUMkgGWEr--7nTxlc(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;[IZ)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$submitRequest$6(Landroid/hardware/camera2/CaptureRequest$Builder;[IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$IEyqn4kRHC2QAWF_Sm9JCiHNG8w(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$close$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QzMzTtWDaUDogYj4g3oeWiVT4T8(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$deleteStream$4(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RVVBoItdnYzrUrJsotZ4CYVPlA0(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$getCameraCharacteristic$2(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Tt1AH84BWsvtB-uyAbyp3mbw-7A(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/view/Surface;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$createStream$3(Landroid/view/Surface;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$m7kOgG16PtEx5utFprjXJ1ANtDo(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/IRemoteDeviceCallback;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->lambda$setCallback$8(Landroid/hardware/IRemoteDeviceCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->BINDER_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Landroid/hardware/IRemoteDevice$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    return-void
.end method

.method private blacklist executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->BINDER_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Callable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    :catchall_0
    move-exception v3

    const-string v4, "ijt/DeviceIjtSessionImpl"

    const-string v5, "error while transaction"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v3}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private synthetic blacklist lambda$clearRequest$7()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->clearRequest()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$close$9()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->close()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$createDefaultRequest$5(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->createDefaultRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$createStream$3(Landroid/view/Surface;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->createStream(Landroid/view/Surface;Landroid/util/Size;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$deleteStream$4(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->deleteStream(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeWithCleanIdentity$0(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Callable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private synthetic blacklist lambda$getCameraCharacteristic$2(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->getCameraCharacteristic(Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$open$1(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->open(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setCallback$8(Landroid/hardware/IRemoteDeviceCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$1;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/IRemoteDeviceCallback;)V

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->setCallback(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$submitRequest$6(Landroid/hardware/camera2/CaptureRequest$Builder;[IZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->mRemoteDevice:Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;[IZ)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist clearRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;)V

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;)V

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist createDefaultRequest()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v1
.end method

.method public blacklist createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/view/Surface;)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public blacklist deleteStream(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;I)V

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist getCameraCharacteristic()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl-IA;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setLensFacing(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setSensorOrientation(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setAELockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setAWBLockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->setFlashAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedAEMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedAWBMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedAFMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedEffectMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedSceneMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;->addSupportedControlMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v1
.end method

.method public blacklist open(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setCallback(Landroid/hardware/IRemoteDeviceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/IRemoteDeviceCallback;)V

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist submitRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;[IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;Landroid/hardware/camera2/CaptureRequest$Builder;[IZ)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;->executeWithCleanIdentity(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method
