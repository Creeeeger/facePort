.class public Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
.super Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
.source "CameraDeviceSetupImpl.java"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    return-void
.end method

.method public static blacklist isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 4

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->featureCombinationQuery()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x22

    if-le v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDeviceId()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v1, v2, p1, v3, v4}, Landroid/hardware/ICameraService;->createDefaultRequest(Ljava/lang/String;III)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    invoke-static {v2, v3, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    new-instance v9, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v3, v9

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v9

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Camera service is currently unavailable."

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionCharacteristics(Landroid/hardware/camera2/params/SessionConfiguration;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v8

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v9

    move-object v3, v1

    move-object v7, p1

    invoke-interface/range {v3 .. v9}, Landroid/hardware/ICameraService;->getSessionCharacteristics(Ljava/lang/String;IILandroid/hardware/camera2/params/SessionConfiguration;II)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v2

    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    sparse-switch v3, :sswitch_data_0

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    goto :goto_0

    :sswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Session Characteristics Query not supported by device."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Session Configuration"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :goto_0
    throw v3

    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Camera service is currently disabled"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v6

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v7

    move-object v2, v1

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;II)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Camera service is currently unavailable."

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist openCamera(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraDeviceSetup(cameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
