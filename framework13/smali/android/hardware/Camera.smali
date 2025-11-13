.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$IAppOpsCallbackWrapper;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final whitelist ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final greylist-max-o CAMERA_ERROR_DISABLED:I = 0x3

.field public static final whitelist CAMERA_ERROR_EVICTED:I = 0x2

.field public static final whitelist CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final whitelist CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final greylist-max-o CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final greylist-max-o CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final greylist-max-r CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field public static final blacklist CAMERA_HAL_API_VERSION_3_0:I = 0x300

.field private static final greylist-max-o CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final greylist-max-o CAMERA_MSG_ERROR:I = 0x1

.field private static final greylist-max-o CAMERA_MSG_FOCUS:I = 0x4

.field private static final greylist-max-o CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final greylist-max-o CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final greylist-max-o CAMERA_MSG_SHUTTER:I = 0x2

.field private static final greylist-max-o CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final greylist-max-o CAMERA_MSG_ZOOM:I = 0x8

.field private static final greylist-max-o NO_ERROR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private greylist-max-o mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final greylist-max-o mAutoFocusCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private greylist-max-o mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private greylist-max-o mFaceDetectionRunning:Z

.field private greylist-max-o mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private greylist-max-o mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-p mNativeContext:J

.field private greylist-max-o mOneShot:Z

.field private greylist-max-o mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-o mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private greylist-max-o mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-o mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private greylist-max-o mShutterSoundEnabledFromApp:Z

.field private final greylist-max-o mShutterSoundLock:Ljava/lang/Object;

.field private greylist-max-o mUsingPreviewAllocation:Z

.field private greylist-max-o mWithBuffer:Z

.field private greylist-max-o mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusCallbackLock(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOneShot(Landroid/hardware/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWithBuffer(Landroid/hardware/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviewCallback(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHasPreviewCallback(Landroid/hardware/Camera;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAppOpsPlayAudio(Landroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 1

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 201
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 524
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 201
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 493
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInit(I)I

    move-result v0

    .line 494
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-eq v0, v1, :cond_1

    .line 497
    sget v1, Landroid/system/OsConstants;->ENODEV:I

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    .line 498
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_2
    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    .line 504
    return-void
.end method

.method private final native greylist-max-o _addCallbackBuffer([BI)V
.end method

.method private final native blacklist _enableRecordingSound(Z)Z
.end method

.method private final native greylist-max-o _enableShutterSound(Z)Z
.end method

.method private static native greylist-max-o _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native greylist-max-o _startFaceDetection(I)V
.end method

.method private final native greylist-max-o _stopFaceDetection()V
.end method

.method private final native greylist-max-o _stopPreview()V
.end method

.method private final greylist addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .line 980
    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 987
    return-void
.end method

.method private blacklist cameraInit(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 471
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 472
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 473
    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 474
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 476
    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 479
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 480
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    .line 482
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 484
    :cond_1
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 487
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .line 511
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native greylist-max-o enableFocusMoveCallback(I)V
.end method

.method public static whitelist getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .line 293
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 294
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 295
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 297
    .local v1, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    goto :goto_0

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static greylist getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .line 2105
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2106
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    return-object v1
.end method

.method public static native whitelist getNumberOfCameras()I
.end method

.method public static greylist-max-o getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 2119
    if-eqz p0, :cond_0

    .line 2123
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->-$$Nest$mgetOuter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2124
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    .line 2125
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2127
    return-object v1

    .line 2120
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o initAppOps()V
    .locals 5

    .line 527
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 528
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 530
    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    .line 532
    new-instance v1, Landroid/hardware/Camera$IAppOpsCallbackWrapper;

    invoke-direct {v1, p0}, Landroid/hardware/Camera$IAppOpsCallbackWrapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x1c

    .line 535
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 534
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    goto :goto_0

    .line 536
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Camera"

    const-string v3, "Error registering appOps callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 540
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private final native greylist-max-o native_autoFocus()V
.end method

.method private final native greylist-max-o native_cancelAutoFocus()V
.end method

.method private final native greylist native_getParameters()Ljava/lang/String;
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist native_setParameters(Ljava/lang/String;)V
.end method

.method private native greylist native_setup(Ljava/lang/Object;ILjava/lang/String;)I
.end method

.method private final native greylist-max-o native_takePicture(I)V
.end method

.method public static whitelist open()Landroid/hardware/Camera;
    .locals 4

    .line 411
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 412
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 413
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 414
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 415
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 416
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v2}, Landroid/hardware/Camera;-><init>(I)V

    return-object v3

    .line 413
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .line 398
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static greylist openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .line 462
    const/16 v0, 0x300

    if-lt p1, v0, :cond_0

    .line 466
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .line 518
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1228
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1229
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 1230
    return-void

    .line 1232
    :cond_0
    iget-object v1, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v1, :cond_1

    .line 1233
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1234
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1236
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private greylist-max-o releaseAppOps()V
    .locals 2

    .line 544
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 550
    :goto_0
    return-void
.end method

.method private final native greylist-max-o setHasPreviewCallback(ZZ)V
.end method

.method private final native greylist-max-o setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private greylist-max-o updateAppOpsPlayAudio()V
    .locals 9

    .line 1717
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1718
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    .local v1, "oldHasAppOpsPlayAudio":Z
    const/4 v2, 0x1

    .line 1721
    .local v2, "mode":I
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v4, :cond_0

    .line 1722
    const/16 v5, 0x1c

    const/16 v6, 0xd

    .line 1724
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1722
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v4

    move v2, v4

    .line 1726
    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    .end local v2    # "mode":I
    goto :goto_1

    .line 1727
    :catch_0
    move-exception v2

    .line 1728
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Camera"

    const-string v5, "AppOpsService check audio operation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iput-boolean v3, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 1731
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-eq v1, v2, :cond_4

    .line 1732
    if-nez v2, :cond_3

    .line 1733
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1734
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1736
    .local v4, "audioService":Landroid/media/IAudioService;
    :try_start_3
    invoke-interface {v4}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 1737
    :try_start_4
    monitor-exit v0

    return-void

    .line 1741
    :cond_2
    goto :goto_2

    .line 1739
    :catch_1
    move-exception v5

    .line 1740
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Camera"

    const-string v7, "Audio service is unavailable for queries"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1743
    nop

    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "audioService":Landroid/media/IAudioService;
    goto :goto_3

    .line 1744
    :cond_3
    iget-boolean v2, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 1747
    .end local v1    # "oldHasAppOpsPlayAudio":Z
    :cond_4
    :goto_3
    monitor-exit v0

    .line 1748
    return-void

    .line 1747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public final whitelist addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .line 929
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 930
    return-void
.end method

.method public final greylist addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .line 973
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 974
    return-void
.end method

.method public final whitelist autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .line 1320
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1322
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1324
    return-void

    .line 1322
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final whitelist cancelAutoFocus()V
    .locals 2

    .line 1340
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1359
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1360
    return-void

    .line 1342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final greylist-max-o createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 5
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1020
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1021
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v2, Landroid/renderscript/Type$Builder;

    sget-object v3, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 1022
    invoke-static {p1, v3, v4}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1027
    .local v2, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v3, 0x32315659

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1028
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1029
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1031
    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    or-int/lit8 v4, p2, 0x20

    invoke-static {p1, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 1034
    .local v3, "a":Landroid/renderscript/Allocation;
    return-object v3
.end method

.method public final greylist-max-o disableShutterSound()Z
    .locals 1

    .line 1691
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final blacklist enableRecordingSound(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 1671
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableRecordingSound(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist enableShutterSound(Z)Z
    .locals 8
    .param p1, "enabled"    # Z

    .line 1633
    const/4 v0, 0x1

    .line 1634
    .local v0, "canDisableShutterSound":Z
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1635
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1637
    .local v2, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1638
    const/4 v0, 0x0

    .line 1642
    :cond_0
    goto :goto_0

    .line 1640
    :catch_0
    move-exception v3

    .line 1641
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Camera"

    const-string v5, "Audio service is unavailable for queries"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 1644
    return v3

    .line 1646
    :cond_1
    iget-object v4, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1647
    :try_start_1
    iput-boolean p1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 1650
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v5

    .line 1651
    .local v5, "ret":Z
    if-eqz p1, :cond_2

    iget-boolean v6, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v6, :cond_2

    .line 1652
    const-string v6, "Camera"

    const-string v7, "Shutter sound is not allowed by AppOpsManager"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    if-eqz v0, :cond_2

    .line 1654
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1657
    :cond_2
    monitor-exit v4

    return v5

    .line 1658
    .end local v5    # "ret":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 554
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 555
    return-void
.end method

.method public final native blacklist getAudioRestriction()I
.end method

.method public whitelist getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 2090
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    .line 2091
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2092
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2093
    return-object v0
.end method

.method public final native whitelist lock()V
.end method

.method public final native greylist previewEnabled()Z
.end method

.method public final native whitelist reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist release()V
    .locals 1

    .line 569
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 571
    invoke-direct {p0}, Landroid/hardware/Camera;->releaseAppOps()V

    .line 572
    return-void
.end method

.method public final native blacklist setAudioRestriction(I)V
.end method

.method public whitelist setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1395
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1396
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1397
    return-void
.end method

.method public final greylist-max-o setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 2049
    iput-object p1, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2050
    return-void
.end method

.method public final native whitelist setDisplayOrientation(I)V
.end method

.method public final whitelist setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 2031
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2032
    return-void
.end method

.method public final whitelist setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .line 1813
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1814
    return-void
.end method

.method public final whitelist setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 845
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 847
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 848
    if-eqz p1, :cond_0

    .line 849
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 851
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 852
    return-void
.end method

.method public whitelist setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 2066
    iget-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v0, :cond_1

    .line 2067
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2068
    .local v0, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2069
    .local v1, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2071
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2076
    .end local v0    # "newPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2077
    return-void
.end method

.method public final whitelist setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 817
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 819
    iput-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 820
    if-eqz p1, :cond_0

    .line 821
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 825
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 826
    return-void
.end method

.method public final greylist-max-o setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 7
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_3

    .line 1087
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1088
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1089
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    .line 1090
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1100
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 1105
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-ne v3, v4, :cond_0

    .line 1110
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1111
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1112
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    .end local v2    # "previewSize":Landroid/hardware/Camera$Size;
    goto :goto_0

    .line 1107
    .restart local v1    # "p":Landroid/hardware/Camera$Parameters;
    .restart local v2    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1102
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1091
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1094
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1096
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". Preview is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1113
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    .end local v2    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1115
    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1116
    return-void
.end method

.method public final whitelist setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 885
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 887
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 888
    if-eqz p1, :cond_0

    .line 889
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 891
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 892
    return-void
.end method

.method public final whitelist setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    if-eqz p1, :cond_0

    .line 660
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 662
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 664
    :goto_0
    return-void
.end method

.method public final native greylist-max-p setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native whitelist setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1783
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1784
    return-void
.end method

.method public final whitelist startFaceDetection()V
    .locals 2

    .line 1849
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-nez v0, :cond_0

    .line 1852
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1854
    return-void

    .line 1850
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final native whitelist startPreview()V
.end method

.method public final native whitelist startSmoothZoom(I)V
.end method

.method public final whitelist stopFaceDetection()V
    .locals 1

    .line 1862
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1863
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1864
    return-void
.end method

.method public final whitelist stopPreview()V
    .locals 2

    .line 775
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 779
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 780
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 781
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 782
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 783
    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 784
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 786
    return-void

    .line 784
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native whitelist stopSmoothZoom()V
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 1450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1451
    return-void
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 1488
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1489
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1490
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1491
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1494
    const/4 v0, 0x0

    .line 1495
    .local v0, "msgType":I
    if-eqz p1, :cond_0

    .line 1496
    or-int/lit8 v0, v0, 0x2

    .line 1498
    :cond_0
    if-eqz p2, :cond_1

    .line 1499
    or-int/lit16 v0, v0, 0x80

    .line 1501
    :cond_1
    if-eqz p3, :cond_2

    .line 1502
    or-int/lit8 v0, v0, 0x40

    .line 1504
    :cond_2
    if-eqz p4, :cond_3

    .line 1505
    or-int/lit16 v0, v0, 0x100

    .line 1508
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1509
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1510
    return-void
.end method

.method public final native whitelist unlock()V
.end method
