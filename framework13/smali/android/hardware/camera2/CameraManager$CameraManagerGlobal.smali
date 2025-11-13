.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation


# static fields
.field private static final greylist-max-o CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final greylist-max-o gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final greylist-max-o sCameraServiceDisabled:Z


# instance fields
.field private final greylist-max-o CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCameraDeviceStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraManager$CameraDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCameraService:Landroid/hardware/ICameraService;

.field private final blacklist mConcurrentCameraIdCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mOpenedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final blacklist mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTorchClientBinder:Landroid/os/Binder;

.field private final greylist-max-o mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnavailablePhysicalDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 1844
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 1892
    nop

    .line 1893
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 1892
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 1890
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 1839
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 1841
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 1852
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1854
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 1856
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 1859
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    .line 1861
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    .line 1865
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 1869
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 1872
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 1875
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 1879
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    .line 1880
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    .line 1883
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 1887
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 1890
    return-void
.end method

.method private static blacklist cameraStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraStatus"    # I

    .line 3173
    const-string v0, "STATUS_UNKNOWN"

    packed-switch p0, :pswitch_data_0

    .line 3181
    return-object v0

    .line 3176
    :pswitch_0
    const-string v0, "STATUS_ENUMERATING"

    return-object v0

    .line 3175
    :pswitch_1
    const-string v0, "STATUS_PRESENT"

    return-object v0

    .line 3174
    :pswitch_2
    const-string v0, "STATUS_NOT_PRESENT"

    return-object v0

    .line 3178
    :pswitch_3
    return-object v0

    .line 3177
    :pswitch_4
    const-string v0, "STATUS_NOT_AVAILABLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist cameraStatusesContains([Landroid/hardware/CameraStatus;Ljava/lang/String;)Z
    .locals 5
    .param p0, "cameraStatuses"    # [Landroid/hardware/CameraStatus;
    .param p1, "id"    # Ljava/lang/String;

    .line 2075
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2076
    .local v3, "c":Landroid/hardware/CameraStatus;
    iget-object v4, v3, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2077
    const/4 v0, 0x1

    return v0

    .line 2075
    .end local v3    # "c":Landroid/hardware/CameraStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2080
    :cond_1
    return v1
.end method

.method private greylist-max-o connectCameraServiceLocked()V
    .locals 12

    .line 1929
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 1931
    :cond_0
    const-string v0, "CameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const-string/jumbo v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1934
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 1936
    return-void

    .line 1939
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1943
    nop

    .line 1945
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 1948
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1951
    goto :goto_0

    .line 1949
    :catch_0
    move-exception v3

    .line 1950
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 1954
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    :try_start_2
    invoke-interface {v2, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 1955
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 1956
    .local v6, "c":Landroid/hardware/CameraStatus;
    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    iget-object v8, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1958
    iget-object v7, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1959
    iget-object v7, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 1960
    .local v10, "unavailPhysicalCamera":Ljava/lang/String;
    iget-object v11, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v1, v11, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 1959
    .end local v10    # "unavailPhysicalCamera":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1966
    :cond_2
    iget-boolean v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v7, :cond_3

    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    iget-object v7, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 1968
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1969
    iget-object v7, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    .end local v6    # "c":Landroid/hardware/CameraStatus;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1972
    :cond_4
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1978
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    goto :goto_3

    .line 1976
    :catch_1
    move-exception v3

    .line 1981
    :goto_3
    nop

    .line 1982
    :try_start_3
    invoke-interface {v2}, Landroid/hardware/ICameraService;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v3

    .line 1983
    .local v3, "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    array-length v4, v3

    :goto_4
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 1984
    .local v5, "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->getConcurrentCameraIdCombination()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1983
    nop

    .end local v5    # "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1992
    .end local v3    # "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :cond_5
    goto :goto_5

    .line 1990
    :catch_2
    move-exception v1

    .line 1993
    :goto_5
    return-void

    .line 1986
    :catch_3
    move-exception v1

    .line 1988
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get concurrent camera id combinations"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1973
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_4
    move-exception v1

    .line 1975
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1940
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_5
    move-exception v1

    .line 1942
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1929
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_6
    return-void
.end method

.method private blacklist extractCameraIdListLocked()[Ljava/lang/String;
    .locals 6

    .line 1996
    const/4 v0, 0x0

    .line 1997
    .local v0, "cameraIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1998
    .local v1, "idCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_2

    .line 1999
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2000
    .local v3, "status":I
    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    .line 2001
    goto :goto_1

    .line 2002
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1998
    .end local v3    # "status":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2004
    .end local v2    # "i":I
    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    .line 2005
    const/4 v1, 0x0

    .line 2006
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2007
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2008
    .restart local v3    # "status":I
    if-eqz v3, :cond_4

    if-ne v3, v4, :cond_3

    .line 2009
    goto :goto_3

    .line 2010
    :cond_3
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v1

    .line 2011
    add-int/lit8 v1, v1, 0x1

    .line 2006
    .end local v3    # "status":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2013
    .end local v2    # "i":I
    :cond_5
    return-object v0
.end method

.method private blacklist extractConcurrentCameraIdListLocked()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2017
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2018
    .local v0, "concurrentCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2019
    .local v2, "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2020
    .local v3, "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2024
    .local v5, "cameraId":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2025
    .local v6, "status":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 2027
    goto :goto_1

    .line 2029
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 2030
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    .line 2031
    goto :goto_1

    .line 2033
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2034
    .end local v5    # "cameraId":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/Integer;
    goto :goto_1

    .line 2035
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2036
    .end local v2    # "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 2037
    :cond_4
    return-object v0
.end method

.method public static greylist-max-o get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    .line 1896
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private greylist-max-o handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 2378
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 2383
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2380
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    nop

    .line 2385
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 2388
    packed-switch p1, :pswitch_data_0

    .line 2392
    const/4 v0, 0x0

    return v0

    .line 2390
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$postSingleTorchStrengthLevelUpdate$2(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2555
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    .line 2556
    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$0(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 2
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 2525
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "onTorchModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    .line 2528
    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$1(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .locals 2
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 2539
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "onTorchModeUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    .line 2541
    return-void
.end method

.method private blacklist onCameraClosedLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2926
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2928
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2929
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2930
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2931
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2933
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v3, v2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 2929
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2935
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist onCameraDeviceStateChangedLocked(Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V
    .locals 7
    .param p1, "state"    # Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    .param p2, "id"    # Ljava/lang/String;

    .line 2948
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 2949
    .local v0, "oldState":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    const-string v1, "CameraManagerGlobal"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2950
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "CameraDevice %s state changed to (%s), which is what it already was, skip callback"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    return-void

    .line 2956
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2957
    .local v2, "semCallbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2958
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 2959
    .local v4, "executor":Ljava/util/concurrent/Executor;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 2960
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    invoke-direct {p0, v5, v4, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 2957
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2966
    .end local v2    # "semCallbackCount":I
    .end local v3    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2967
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 2968
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 2969
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2971
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    iget-boolean v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v6, :cond_2

    .line 2972
    const-string/jumbo v6, "onCameraDeviceStateChangedLocked: post device state update"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    invoke-direct {p0, v5, v4, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 2967
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2977
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2892
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2894
    .local v0, "oldApk":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2895
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "onCameraOpened was previously called for "

    const-string v3, "CameraManagerGlobal"

    if-eqz v1, :cond_0

    .line 2896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now again called for the same package name, so no new client visible update will be sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    return-void

    .line 2902
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without onCameraClosed being called first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2910
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2911
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2912
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2914
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2916
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 2675
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CameraManagerGlobal"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2676
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v3

    const/4 v1, 0x2

    .line 2678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2676
    const-string v1, "Ignoring invalid device %s physical device %s status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    return-void

    .line 2683
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 2684
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 2690
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2691
    .local v0, "unavailablePhysicalDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2692
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2693
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2694
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2695
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2696
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2710
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2711
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 2712
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2713
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2715
    .local v10, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v7, p2

    move-object v8, p3

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2711
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v10    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2717
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 2707
    .end local v1    # "callbackCount":I
    :cond_4
    return-void

    .line 2685
    .end local v0    # "unavailablePhysicalDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "Camera %s is not available. Ignore physical camera status change"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    return-void
.end method

.method private greylist-max-o onStatusChangedLocked(ILjava/lang/String;)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 2607
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2608
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2609
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2608
    const-string v1, "Ignoring invalid device %s status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    return-void

    .line 2614
    :cond_0
    if-nez p1, :cond_1

    .line 2615
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2616
    .local v0, "oldStatus":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2618
    .end local v0    # "oldStatus":Ljava/lang/Integer;
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2619
    .restart local v0    # "oldStatus":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2620
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 2630
    return-void

    .line 2646
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2655
    return-void

    .line 2658
    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2659
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 2660
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2661
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2663
    .local v10, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v7, p2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2659
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v10    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2665
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private greylist-max-o onTorchStatusChangedLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 2733
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2734
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2735
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2734
    const-string v1, "Ignoring invalid device %s torch status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    return-void

    .line 2739
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2740
    .local v0, "oldStatus":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 2746
    return-void

    .line 2749
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2750
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2751
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2752
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2753
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v4, v3, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2750
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2755
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist onTorchStrengthLevelChangedLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2765
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2766
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2767
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2768
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2769
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v3, v2, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2766
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2771
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cameraId"    # Ljava/lang/String;
    .param p4, "state"    # Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3033
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$CameraDeviceState;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3072
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3073
    nop

    .line 3074
    return-void

    .line 3072
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3073
    throw v2
.end method

.method private blacklist postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2423
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2432
    nop

    .line 2433
    return-void

    .line 2431
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2432
    throw v2
.end method

.method private blacklist postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;

    .line 2453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2455
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    invoke-direct {v2, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2464
    nop

    .line 2465
    return-void

    .line 2463
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2464
    throw v2
.end method

.method private blacklist postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cameraId"    # Ljava/lang/String;
    .param p4, "state"    # Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3017
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;

    invoke-direct {v2, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3026
    nop

    .line 3027
    return-void

    .line 3025
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3026
    throw v2
.end method

.method private blacklist postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "packageId"    # Ljava/lang/String;

    .line 2437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2439
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v2, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    nop

    .line 2449
    return-void

    .line 2447
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    throw v2
.end method

.method private blacklist postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "newStrengthLevel"    # I

    .line 2552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2554
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2558
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2559
    nop

    .line 2560
    return-void

    .line 2558
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2559
    throw v2
.end method

.method private greylist-max-o postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 2517
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "postSingleTorchUpdate device: camera id %s status %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    packed-switch p4, :pswitch_data_0

    .line 2535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    goto :goto_0

    .line 2521
    .end local v0    # "ident":J
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2523
    .restart local v0    # "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2531
    nop

    .line 2533
    .end local v0    # "ident":J
    goto :goto_1

    .line 2530
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2531
    throw v2

    .line 2537
    :goto_0
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2544
    nop

    .line 2548
    .end local v0    # "ident":J
    :goto_1
    return-void

    .line 2543
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2544
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "physicalId"    # Ljava/lang/String;
    .param p5, "status"    # I

    .line 2470
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2471
    return-void

    .line 2473
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 2474
    invoke-static {p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2473
    const-string/jumbo v1, "postSingleUpdate device: camera id %s status %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-direct {p0, p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2480
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$6;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$6;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2493
    nop

    .line 2494
    .end local v0    # "ident":J
    goto :goto_0

    .line 2492
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2493
    throw v2

    .line 2495
    .end local v0    # "ident":J
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2497
    .restart local v0    # "ident":J
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$7;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$7;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2510
    nop

    .line 2512
    .end local v0    # "ident":J
    :goto_0
    return-void

    .line 2509
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2510
    throw v2
.end method

.method private greylist-max-o scheduleCameraServiceReconnectionLocked()V
    .locals 5

    .line 3082
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3084
    return-void

    .line 3093
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3123
    goto :goto_0

    .line 3121
    :catch_0
    move-exception v0

    .line 3122
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule camera service re-connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private static blacklist sortCameraIds([Ljava/lang/String;)V
    .locals 1
    .param p0, "cameraIds"    # [Ljava/lang/String;

    .line 2043
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2072
    return-void
.end method

.method private greylist-max-o updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 12
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2568
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2569
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    .line 2570
    .local v8, "status":Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2573
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2574
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    .line 2575
    .local v9, "unavailableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 2576
    .local v11, "unavailableId":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2578
    .end local v11    # "unavailableId":Ljava/lang/String;
    goto :goto_1

    .line 2567
    .end local v1    # "id":Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/Integer;
    .end local v9    # "unavailableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2583
    .end local v0    # "i":I
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v0, :cond_2

    .line 2584
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "updateCallbackLocked: post device state update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2587
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2588
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 2589
    .local v2, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 2586
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2594
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2595
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2596
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2597
    .local v2, "clientPackageId":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "clientPackageId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2599
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist updateSemCameraDeviceStateCallbackLocked(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3006
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3007
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3008
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3009
    .local v2, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 3006
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3011
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2720
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2721
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2722
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2723
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2720
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2725
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 2397
    packed-switch p1, :pswitch_data_0

    .line 2404
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2402
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 2409
    packed-switch p1, :pswitch_data_0

    .line 2415
    const/4 v0, 0x0

    return v0

    .line 2413
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1901
    return-object p0
.end method

.method public whitelist binderDied()V
    .locals 8

    .line 3134
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3136
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3138
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 3145
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 3146
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3147
    .local v3, "cameraId":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 3149
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_1

    .line 3150
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Ljava/lang/String;)V

    .line 3145
    .end local v3    # "cameraId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3153
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3154
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3155
    .restart local v3    # "cameraId":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 3153
    .end local v3    # "cameraId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3159
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3160
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3161
    .local v2, "cameraId":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3162
    .local v3, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    new-instance v4, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v5, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    const/4 v6, 0x3

    const-string v7, "android.system"

    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, v4, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraDeviceStateChangedLocked(Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V

    .line 3159
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3165
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3167
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3168
    monitor-exit v0

    .line 3169
    return-void

    .line 3168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist cameraIdHasConcurrentStreamsLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2286
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2292
    return v1

    .line 2294
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2295
    .local v2, "comb":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2296
    const/4 v0, 0x1

    return v0

    .line 2298
    .end local v2    # "comb":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 2299
    :cond_2
    return v1
.end method

.method public greylist-max-o getCameraIdList()[Ljava/lang/String;
    .locals 8

    .line 2190
    const/4 v0, 0x0

    .line 2191
    .local v0, "cameraIds":[Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2193
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2194
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2198
    const/4 v1, 0x0

    .line 2199
    .local v1, "publicIdCount":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x14

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    .line 2200
    .local v6, "cameraId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v5, :cond_0

    .line 2201
    add-int/lit8 v1, v1, 0x1

    .line 2199
    .end local v6    # "cameraId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    .line 2205
    .local v2, "publicCameraIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2206
    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 2207
    .restart local v6    # "cameraId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v5, :cond_2

    .line 2208
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "publicIdCount":I
    .local v7, "publicIdCount":I
    aput-object v6, v2, v1

    move v1, v7

    .line 2206
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "publicIdCount":I
    .restart local v1    # "publicIdCount":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2211
    :cond_3
    move-object v0, v2

    .line 2213
    return-object v0

    .line 2195
    .end local v1    # "publicIdCount":I
    .end local v2    # "publicCameraIds":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .locals 10

    .line 2084
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2085
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 2089
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 2120
    .local v0, "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    const/4 v2, 0x0

    .line 2121
    .local v2, "cameraIds":[Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2122
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v4, v0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v4

    .line 2137
    .local v4, "cameraStatuses":[Landroid/hardware/CameraStatus;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5, v0}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 2138
    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 2139
    .local v7, "c":Landroid/hardware/CameraStatus;
    iget v8, v7, Landroid/hardware/CameraStatus;->status:I

    iget-object v9, v7, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2138
    .end local v7    # "c":Landroid/hardware/CameraStatus;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2141
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2142
    .local v5, "deviceCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2143
    .local v6, "deviceIdsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2148
    .local v8, "deviceCameraId":Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusesContains([Landroid/hardware/CameraStatus;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2149
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    .end local v8    # "deviceCameraId":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 2152
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2153
    .local v8, "id":Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2154
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2155
    nop

    .end local v8    # "id":Ljava/lang/String;
    goto :goto_2

    .line 2162
    .end local v5    # "deviceCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "deviceIdsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    goto :goto_3

    .line 2160
    .end local v4    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    :catch_0
    move-exception v4

    .line 2163
    :goto_3
    :try_start_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked()[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2164
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2165
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2167
    const/4 v3, 0x0

    .line 2168
    .local v3, "publicIdCount":I
    array-length v4, v2

    move v5, v1

    :goto_4
    const/16 v6, 0x14

    if-ge v5, v4, :cond_6

    aget-object v7, v2, v5

    .line 2169
    .local v7, "cameraId":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 2170
    add-int/lit8 v3, v3, 0x1

    .line 2168
    .end local v7    # "cameraId":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2173
    :cond_6
    new-array v4, v3, [Ljava/lang/String;

    .line 2174
    .local v4, "publicCameraIds":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2175
    array-length v5, v2

    :goto_5
    if-ge v1, v5, :cond_8

    aget-object v7, v2, v1

    .line 2176
    .restart local v7    # "cameraId":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v8, v6, :cond_7

    .line 2177
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "publicIdCount":I
    .local v8, "publicIdCount":I
    aput-object v7, v4, v3

    move v3, v8

    .line 2175
    .end local v7    # "cameraId":Ljava/lang/String;
    .end local v8    # "publicIdCount":I
    .restart local v3    # "publicIdCount":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2180
    :cond_8
    move-object v1, v4

    .line 2182
    .end local v2    # "cameraIds":[Ljava/lang/String;
    .local v1, "cameraIds":[Ljava/lang/String;
    return-object v1

    .line 2156
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v3    # "publicIdCount":I
    .end local v4    # "publicCameraIds":[Ljava/lang/String;
    .restart local v2    # "cameraIds":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2158
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to register a camera service listener"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .end local v2    # "cameraIds":[Ljava/lang/String;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw v4

    .line 2164
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .restart local v2    # "cameraIds":[Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public greylist-max-o getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    .line 1912
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1913
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1914
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_0

    .line 1915
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 1918
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getConcurrentCameraIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2217
    const/4 v0, 0x0

    .line 2218
    .local v0, "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2220
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2221
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractConcurrentCameraIdListLocked()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 2222
    monitor-exit v1

    .line 2224
    return-object v0

    .line 2222
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getTorchStrengthLevel(Ljava/lang/String;)I
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2353
    const/4 v0, 0x0

    .line 2354
    .local v0, "torchStrength":I
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2355
    if-eqz p1, :cond_1

    .line 2359
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2360
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 2366
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/ICameraService;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 2372
    :goto_0
    goto :goto_1

    .line 2369
    :catch_0
    move-exception v4

    .line 2370
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable."

    invoke-direct {v5, v3, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 2367
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2368
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_0

    .line 2373
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :goto_1
    monitor-exit v1

    .line 2374
    return v0

    .line 2361
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 2373
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2356
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cameraId was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v2

    .line 2373
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist isConcurrentSessionConfigurationSupported(Ljava/util/Map;I)Z
    .locals 11
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2231
    .local p1, "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    if-eqz p1, :cond_5

    .line 2235
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2236
    .local v0, "size":I
    if-eqz v0, :cond_4

    .line 2240
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2243
    const/4 v2, 0x0

    .line 2244
    .local v2, "subsetFound":Z
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 2245
    .local v4, "combination":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2246
    const/4 v2, 0x1

    .line 2248
    .end local v4    # "combination":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 2249
    :cond_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 2250
    const-string v4, "CameraManagerGlobal"

    const-string v5, "isConcurrentSessionConfigurationSupported called with a subset ofcamera ids not returned by getConcurrentCameraIds"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    monitor-exit v1

    return v3

    .line 2254
    :cond_2
    new-array v4, v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2256
    .local v4, "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    const/4 v5, 0x0

    .line 2258
    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2259
    .local v7, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    new-instance v8, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2260
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V

    aput-object v8, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    nop

    .end local v7    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    add-int/lit8 v5, v5, 0x1

    .line 2262
    goto :goto_1

    .line 2264
    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v6, v4, p2}, Landroid/hardware/ICameraService;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v3

    .line 2268
    :catch_0
    move-exception v3

    .line 2270
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v6, Landroid/hardware/camera2/CameraAccessException;

    const/4 v7, 0x2

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v6, v7, v8, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    throw v6

    .line 2266
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    :catch_1
    move-exception v6

    .line 2267
    .local v6, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 2272
    .end local v6    # "e":Landroid/os/ServiceSpecificException;
    nop

    .line 2273
    .end local v2    # "subsetFound":Z
    .end local v4    # "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v5    # "i":I
    monitor-exit v1

    .line 2275
    return v3

    .line 2273
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2237
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "camera id and session combination is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2232
    .end local v0    # "size":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraIdsAndSessionConfigurations was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$scheduleCameraServiceReconnectionLocked$3$android-hardware-camera2-CameraManager$CameraManagerGlobal()V
    .locals 6

    .line 3094
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 3095
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    .line 3096
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3100
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3101
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3104
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3106
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3107
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3108
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3109
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3110
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 3111
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3107
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3116
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 3117
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 3114
    :catch_0
    move-exception v2

    .line 3115
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CameraManagerGlobal"

    const-string v4, "Camera service is currently unavailable"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3117
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 3120
    :goto_2
    return-void

    .line 3117
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .locals 5

    .line 2873
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2874
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2875
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2876
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2877
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2879
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2875
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2881
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 2882
    return-void

    .line 2881
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2920
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2921
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Ljava/lang/String;)V

    .line 2922
    monitor-exit v0

    .line 2923
    return-void

    .line 2922
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 2940
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2941
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    invoke-direct {v1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;-><init>(IILjava/lang/String;)V

    .line 2942
    .local v1, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    const-string v2, "CameraManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " API Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    invoke-direct {p0, v1, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraDeviceStateChangedLocked(Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V

    .line 2944
    .end local v1    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    monitor-exit v0

    .line 2945
    return-void

    .line 2944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2886
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2887
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    monitor-exit v0

    .line 2889
    return-void

    .line 2888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2851
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2852
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 2853
    monitor-exit v0

    .line 2854
    return-void

    .line 2853
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2843
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2844
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2845
    monitor-exit v0

    .line 2846
    return-void

    .line 2845
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onTorchStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2858
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2859
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 2860
    monitor-exit v0

    .line 2861
    return-void

    .line 2860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2866
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2867
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStrengthLevelChangedLocked(Ljava/lang/String;I)V

    .line 2868
    monitor-exit v0

    .line 2869
    return-void

    .line 2868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "hasOpenCloseListenerPermission"    # Z

    .line 2784
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2787
    :try_start_0
    iput-boolean p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 2788
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2790
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2792
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 2793
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2797
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 2798
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2800
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 2801
    return-void

    .line 2800
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2980
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2981
    :try_start_0
    const-string v1, "CameraManagerGlobal"

    const-string/jumbo v2, "registerSemCameraDeviceStateCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2985
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2987
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 2988
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateSemCameraDeviceStateCallbackLocked(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 2992
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 2993
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2995
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 2996
    return-void

    .line 2995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2816
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2817
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2819
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2821
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 2822
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 2826
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 2827
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2829
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 2830
    return-void

    .line 2829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setTorchMode(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2303
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2305
    if-eqz p1, :cond_1

    .line 2309
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2316
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v3}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    :goto_0
    goto :goto_1

    .line 2319
    :catch_0
    move-exception v3

    .line 2320
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v4

    .line 2317
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :catch_1
    move-exception v2

    .line 2318
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_0

    .line 2323
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :goto_1
    monitor-exit v0

    .line 2324
    return-void

    .line 2311
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v3

    .line 2323
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2306
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v1

    .line 2323
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2328
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    if-eqz p1, :cond_1

    .line 2334
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2341
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v3}, Landroid/hardware/ICameraService;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2348
    :goto_0
    goto :goto_1

    .line 2345
    :catch_0
    move-exception v3

    .line 2346
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v4

    .line 2343
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :catch_1
    move-exception v2

    .line 2344
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_0

    .line 2349
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :goto_1
    monitor-exit v0

    .line 2350
    return-void

    .line 2336
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v3

    .line 2349
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2331
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v1

    .line 2349
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2810
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2811
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2812
    monitor-exit v0

    .line 2813
    return-void

    .line 2812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 2999
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3000
    :try_start_0
    const-string v1, "CameraManagerGlobal"

    const-string/jumbo v2, "unregisterSemCameraDeviceStateCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    monitor-exit v0

    .line 3003
    return-void

    .line 3002
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2833
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2834
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    monitor-exit v0

    .line 2836
    return-void

    .line 2835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
