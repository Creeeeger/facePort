.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$FoldStateListener;,
        Landroid/hardware/camera2/CameraManager$DeviceStateListener;,
        Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    }
.end annotation


# static fields
.field private static final greylist-max-o API_VERSION_1:I = 0x1

.field private static final greylist-max-o API_VERSION_2:I = 0x2

.field private static final blacklist CAMERA_OPEN_CLOSE_LISTENER_PERMISSION:Ljava/lang/String; = "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

.field private static final greylist-max-o CAMERA_TYPE_ALL:I = 0x1

.field private static final greylist-max-o CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManager"

.field public static final blacklist TORCH_STRENGTH_1:I = 0x1

.field public static final blacklist TORCH_STRENGTH_2:I = 0x2

.field public static final blacklist TORCH_STRENGTH_3:I = 0x3

.field public static final blacklist TORCH_STRENGTH_4:I = 0x4

.field public static final blacklist TORCH_STRENGTH_5:I = 0x5

.field public static final blacklist TORCH_STRENGTH_DEFAULT:I = 0x0

.field private static final blacklist TORCH_STRENGTH_MAX:I = 0x5

.field private static final greylist-max-o USE_CALLING_UID:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mHasOpenCloseListenerPermission:Z

.field private blacklist mHiddenCameraPermittedState:Ljava/lang/Boolean;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    .line 175
    monitor-enter v1

    .line 176
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 177
    const-string v3, "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

    .line 178
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 187
    :try_start_1
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 188
    invoke-virtual {v0, v1, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraManager"

    const-string v3, "Failed to register device state listener!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, "CameraManager"

    const-string v3, "Device state dependent characteristics updates will not be functional!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 193
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    .line 194
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 196
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private blacklist getDisplaySize()Landroid/util/Size;
    .locals 8

    .line 605
    const-string v0, "CameraManager"

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 608
    .local v1, "ret":Landroid/util/Size;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 609
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 610
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 611
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_1

    .line 612
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 613
    .local v4, "sz":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 614
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 615
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 617
    .local v6, "height":I
    if-le v6, v5, :cond_0

    .line 618
    move v6, v5

    .line 619
    iget v7, v4, Landroid/graphics/Point;->y:I

    move v5, v7

    .line 622
    :cond_0
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    move-object v0, v7

    .line 623
    .end local v1    # "ret":Landroid/util/Size;
    .end local v4    # "sz":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .local v0, "ret":Landroid/util/Size;
    move-object v1, v0

    goto :goto_0

    .line 624
    .end local v0    # "ret":Landroid/util/Size;
    .restart local v1    # "ret":Landroid/util/Size;
    :cond_1
    const-string v4, "Invalid default display!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    :goto_0
    goto :goto_1

    .line 626
    :catch_0
    move-exception v2

    .line 627
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private blacklist getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/ICameraService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 650
    .local v0, "multiResolutionStreamConfigurations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 652
    .local v1, "multiResolutionStreamSupported":Ljava/lang/Boolean;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 660
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    .line 661
    .local v2, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 664
    .local v3, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v3, :cond_1

    .line 665
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_1
    return-object v0

    .line 670
    .end local v3    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 671
    .local v4, "physicalCameraId":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 673
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 672
    invoke-interface {p3, v4, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 674
    .local v5, "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 677
    .local v6, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v6, :cond_3

    .line 678
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v4    # "physicalCameraId":Ljava/lang/String;
    .end local v5    # "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_3
    goto :goto_0

    .line 686
    :cond_4
    goto :goto_1

    .line 681
    :catch_0
    move-exception v3

    .line 682
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/os/ServiceSpecificException;

    const/4 v5, 0x4

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v4, v5, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 685
    .local v4, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 688
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "sse":Landroid/os/ServiceSpecificException;
    :goto_1
    return-object v0

    .line 653
    .end local v2    # "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    return-object v0
.end method

.method private blacklist getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .locals 5
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 811
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 813
    .local v0, "physicalIdsToChars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    .line 814
    .local v1, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 815
    .local v3, "physicalCameraId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 816
    .local v4, "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .end local v3    # "physicalCameraId":Ljava/lang/String;
    .end local v4    # "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 818
    :cond_0
    return-object v0
.end method

.method public static blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 1759
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 1761
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_0

    return v0

    .line 1763
    :cond_0
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1764
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 1767
    return v0
.end method

.method private blacklist openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)Landroid/hardware/camera2/CameraDevice;
    .locals 23
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "uid"    # I
    .param p5, "oomScoreOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 847
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 848
    .local v10, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v11, 0x0

    .line 849
    .local v11, "device":Landroid/hardware/camera2/CameraDevice;
    nop

    .line 850
    invoke-direct {v1, v10}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v12

    .line 851
    .local v12, "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    iget-object v13, v1, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 853
    const/4 v14, 0x0

    .line 854
    .local v14, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 861
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v9, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v10

    move-object v7, v12

    invoke-direct/range {v2 .. v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;ILandroid/content/Context;)V

    move-object v2, v0

    .line 864
    .local v2, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    .local v16, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    const/4 v3, 0x4

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 868
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_1

    .line 873
    iget-object v4, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 874
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v4, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v19

    iget-object v4, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 875
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 873
    move-object v15, v0

    move-object/from16 v17, p1

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, v4

    invoke-interface/range {v15 .. v22}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v3

    move-object v14, v3

    .line 906
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    :goto_0
    goto :goto_2

    .line 869
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    new-instance v4, Landroid/os/ServiceSpecificException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "uid":I
    .end local p5    # "oomScoreOffset":I
    throw v4
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "uid":I
    .restart local p5    # "oomScoreOffset":I
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Landroid/os/ServiceSpecificException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    .line 904
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 905
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    .line 879
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v5, 0x6

    const/4 v6, 0x7

    if-eq v4, v6, :cond_3

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_3

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v5, :cond_3

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v3, :cond_3

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0xa

    if-ne v4, v7, :cond_2

    goto :goto_1

    .line 897
    :cond_2
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 887
    :cond_3
    :goto_1
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 889
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v5, :cond_4

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v3, :cond_4

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-ne v3, v6, :cond_0

    .line 893
    :cond_4
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 913
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_2
    invoke-virtual {v2, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 914
    move-object v11, v2

    .line 915
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    monitor-exit v13

    .line 917
    return-object v11

    .line 878
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Should\'ve gone down the shim path"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "uid":I
    .end local p5    # "oomScoreOffset":I
    throw v3

    .line 915
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "uid":I
    .restart local p5    # "oomScoreOffset":I
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static greylist-max-o throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1702
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_0

    .line 1703
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 1704
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x3

    .line 1705
    .local v1, "reason":I
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_0

    .line 1729
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 1719
    :pswitch_1
    const/16 v1, 0x3e8

    .line 1720
    goto :goto_0

    .line 1716
    :pswitch_2
    const/4 v1, 0x5

    .line 1717
    goto :goto_0

    .line 1713
    :pswitch_3
    const/4 v1, 0x4

    .line 1714
    goto :goto_0

    .line 1710
    :pswitch_4
    const/4 v1, 0x1

    .line 1711
    goto :goto_0

    .line 1707
    :pswitch_5
    const/4 v1, 0x2

    .line 1708
    goto :goto_0

    .line 1723
    :pswitch_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1725
    :pswitch_7
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1731
    :goto_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1732
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "reason":I
    :cond_0
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_3

    .line 1736
    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_2

    .line 1739
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 1743
    return-void

    .line 1740
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 1741
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1737
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1733
    :cond_3
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_5

    .line 723
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_4

    .line 732
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_2

    .line 733
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, "currentPackage":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 736
    invoke-interface {v2, v4}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    .line 739
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 740
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown camera ID %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local v4    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 753
    :try_start_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v4

    .line 755
    .local v4, "displaySize":Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 756
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 755
    invoke-interface {v2, p1, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 758
    .local v5, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    goto :goto_1

    .line 759
    :catch_0
    move-exception v6

    .line 760
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v7, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse camera Id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to integer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraIdHasConcurrentStreamsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 765
    .local v6, "hasConcurrentStreams":Z
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setHasMandatoryConcurrentStreams(Z)V

    .line 766
    invoke-virtual {v5, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    .line 768
    nop

    .line 769
    invoke-direct {p0, p1, v5, v2}, Landroid/hardware/camera2/CameraManager;->getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;

    move-result-object v7

    .line 770
    .local v7, "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 771
    invoke-virtual {v5, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V

    .line 774
    :cond_3
    new-instance v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v8, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v8

    goto :goto_2

    .line 777
    .end local v4    # "displaySize":Landroid/util/Size;
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "hasConcurrentStreams":Z
    .end local v7    # "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :catch_1
    move-exception v4

    .line 779
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 775
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 776
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 781
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_2
    nop

    .line 782
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 783
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 784
    return-object v0

    .line 746
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_3
    move-exception v4

    .line 747
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_6
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 743
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 744
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 726
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 782
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 721
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 806
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v1, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v1
.end method

.method public whitelist getCameraIdList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 290
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConcurrentCameraIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 357
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTorchStrengthLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1357
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1360
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1802
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_1

    .line 1805
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1806
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_0

    .line 1810
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1812
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;-><init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V

    .line 1814
    .local v2, "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    nop

    .line 1815
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    move-result-object v3

    .line 1816
    .local v3, "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-interface {v0, p1, p2, p3, v3}, Landroid/hardware/ICameraService;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 1818
    .local v4, "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .end local v3    # "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    goto :goto_0

    .line 1828
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1821
    :catch_0
    move-exception v2

    .line 1823
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 1826
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1819
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v2

    .line 1820
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 1827
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    nop

    .line 1828
    :goto_1
    monitor-exit v1

    .line 1829
    return-void

    .line 1828
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1807
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1803
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isConcurrentSessionConfigurationSupported(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 395
    .local p1, "cameraIdAndSessionConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 396
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 395
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isConcurrentSessionConfigurationSupported(Ljava/util/Map;I)Z

    move-result v0

    return v0
.end method

.method public whitelist openCamera(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "oomScoreOffset"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1103
    if-eqz p3, :cond_1

    .line 1106
    if-ltz p2, :cond_0

    .line 1110
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V

    .line 1111
    return-void

    .line 1107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "oomScoreOffset < 0, cannot increase priority of camera client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1002
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 1004
    return-void
.end method

.method public whitelist openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1039
    if-eqz p2, :cond_0

    .line 1042
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 1043
    return-void

    .line 1040
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1164
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V

    .line 1165
    return-void
.end method

.method public blacklist openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .param p5, "oomScoreOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1134
    if-eqz p1, :cond_2

    .line 1136
    if-eqz p2, :cond_1

    .line 1139
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1143
    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)Landroid/hardware/camera2/CameraDevice;

    .line 1144
    return-void

    .line 1140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 429
    if-eqz p1, :cond_1

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "isHiddenIdPermittedPackage":Z
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 433
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 435
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x1

    const-string v3, "Camera service is currently unavailable"

    const-string v4, "CameraManager"

    if-nez v1, :cond_0

    .line 436
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {p1, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    goto :goto_0

    .line 440
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 444
    goto :goto_0

    .line 441
    :catch_0
    move-exception v5

    .line 442
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {p1, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 443
    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {p1, v0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAvailabilityCallback: Is device callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v0    # "isHiddenIdPermittedPackage":Z
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 452
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 451
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V

    .line 453
    return-void
.end method

.method public whitelist registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 470
    if-eqz p1, :cond_2

    .line 474
    if-eqz p2, :cond_1

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "isHiddenIdPermittedPackage":Z
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 478
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 480
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x1

    const-string v3, "Camera service is currently unavailable"

    const-string v4, "CameraManager"

    if-nez v1, :cond_0

    .line 481
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {p2, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    goto :goto_0

    .line 485
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 489
    goto :goto_0

    .line 486
    :catch_0
    move-exception v5

    .line 487
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {p2, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 488
    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {p2, v0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAvailabilityCallback: Is device callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v0    # "isHiddenIdPermittedPackage":Z
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V

    .line 498
    return-void

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 265
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    move-result-object v1

    .line 268
    .local v1, "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V

    .line 272
    .end local v1    # "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :cond_0
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 586
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 587
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 586
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 588
    return-void
.end method

.method public whitelist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 535
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 536
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 535
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 537
    return-void
.end method

.method public whitelist registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 554
    if-eqz p1, :cond_0

    .line 557
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 558
    return-void

    .line 555
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semSetTorchMode(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "strength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetTorchMode: cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    if-eqz p2, :cond_2

    .line 1257
    if-ltz p3, :cond_1

    const/4 v0, 0x5

    if-gt p3, v0, :cond_1

    .line 1262
    if-nez p3, :cond_0

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 1265
    return-void

    .line 1267
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/hardware/camera2/CameraManager;->turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V

    .line 1268
    return-void

    .line 1258
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strength is out of supported range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 1271
    return-void
.end method

.method public whitelist setTorchMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1208
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1211
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 1212
    return-void

    .line 1209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1331
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1334
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V

    .line 1335
    return-void

    .line 1332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 509
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 510
    return-void
.end method

.method public whitelist unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 599
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 600
    return-void
.end method

.method public whitelist unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 569
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 570
    return-void
.end method
