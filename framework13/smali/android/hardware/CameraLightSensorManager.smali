.class public Landroid/hardware/CameraLightSensorManager;
.super Ljava/lang/Object;
.source "CameraLightSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraLightSensorManager$ResponseHandler;
    }
.end annotation


# instance fields
.field private final blacklist DBG_TAG:Ljava/lang/String;

.field private final blacklist DEBUG:Z

.field private final blacklist DEBUG_HANDLER:Z

.field private final blacklist IPC_MANAGER_UPDATE_LUX:I

.field private final blacklist IPC_SERVICE_START_CAMERA:I

.field private final blacklist IPC_SERVICE_UNREGISTER_CONNECTION:I

.field private final blacklist LISTENER_TAG:Ljava/lang/String;

.field private final blacklist MSG_MANAGER_LISTENER_LOOP:I

.field private final blacklist MSG_MANAGER_UPDATE_LUX:I

.field private final blacklist MSG_SERVICE_CAMERA_LOOP:I

.field private final blacklist MSG_SERVICE_START_CAMERA:I

.field private final blacklist MSG_SERVICE_STOP_CAMERA:I

.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist listenerRegistered:S

.field private blacklist mAllowListListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraLightListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraLightSensorConnection:Landroid/content/ServiceConnection;

.field private blacklist mCameraSensor:Landroid/hardware/Sensor;

.field private blacklist mConnectionFailed:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabledService:Z

.field private final blacklist mLockIPC:Ljava/lang/Object;

.field private blacklist mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private blacklist mProcessBinded:Z

.field private final blacklist mSABCLite:Ljava/lang/Boolean;

.field private blacklist mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

.field private blacklist mSystemIPC:Landroid/os/Messenger;

.field private blacklist mSystemMessenger:Landroid/os/Messenger;

.field private blacklist mkeyguard:Landroid/app/KeyguardManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlistenerRegistered(Landroid/hardware/CameraLightSensorManager;)S
    .locals 0

    iget-short p0, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraSensor(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionFailed(Landroid/hardware/CameraLightSensorManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/CameraLightSensorManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledService(Landroid/hardware/CameraLightSensorManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMotionManager(Landroid/hardware/CameraLightSensorManager;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessBinded(Landroid/hardware/CameraLightSensorManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemIPC(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemIPC:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemMessenger(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionFailed(Landroid/hardware/CameraLightSensorManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProcessBinded(Landroid/hardware/CameraLightSensorManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSystemHandler(Landroid/hardware/CameraLightSensorManager;Landroid/hardware/CameraLightSensorManager$ResponseHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSystemIPC(Landroid/hardware/CameraLightSensorManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mSystemIPC:Landroid/os/Messenger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "CameraLightSensor_Manager"

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/CameraLightSensorManager;->DEBUG:Z

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->DEBUG_HANDLER:Z

    .line 43
    const-string v2, "Debug_Camera_Manager"

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->DBG_TAG:Ljava/lang/String;

    .line 44
    const-string v2, "Debug_Camera_Listener"

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->LISTENER_TAG:Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    .line 49
    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_SERVICE_START_CAMERA:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_MANAGER_UPDATE_LUX:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_SERVICE_UNREGISTER_CONNECTION:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_START_CAMERA:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_STOP_CAMERA:I

    .line 54
    const/4 v0, 0x6

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_MANAGER_UPDATE_LUX:I

    .line 55
    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_CAMERA_LOOP:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_MANAGER_LISTENER_LOOP:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    .line 68
    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SENSOR_SUPPORT_SABC_LITE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSABCLite:Ljava/lang/Boolean;

    .line 77
    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Landroid/hardware/CameraLightSensorManager;->initAllowListListenerList()V

    .line 79
    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    .line 80
    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    .line 81
    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    .line 82
    return-void
.end method

.method private blacklist initAllowListListenerList()V
    .locals 4

    .line 267
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSABCLite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.samsung.adaptivebrightnessgo"

    const-string v2, "com.android.server.display.AutomaticBrightnessController"

    const-string v3, "com.sec.android.app.camera"

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.android.app.aodservice.ui.AODUiController"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.android.app.aodservice.ui.model"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.invensense.sensors"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.sensorrnd.sensortest"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.samsung.android.gesture.AdaptiveBrightnessController"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.samsung.android.gesture.PocketModeEvent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.sec.android.sdhms.thermal.overheatcontrol.OverheatSensorChecker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.sec.android.sdhms.thermal.siop.scenario.HighBrightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.salab.act"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :goto_0
    return-void
.end method

.method private blacklist initLocked(Landroid/os/Looper;)V
    .locals 6
    .param p1, "cameraLooper"    # Landroid/os/Looper;

    .line 85
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const-string v1, "CameraLightSensor_Manager"

    if-nez v0, :cond_1

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0x13

    const-string v3, "CameraManagerThread"

    invoke-direct {v0, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v2, Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;-><init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using CameraManagerThread looper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "thread":Landroid/os/HandlerThread;
    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using handler looper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-direct {v0, p0, p1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;-><init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    .line 96
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemMessenger:Landroid/os/Messenger;

    .line 99
    :cond_1
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2

    .line 100
    const-string v0, "Creating new connection for service."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/hardware/CameraLightSensorManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/CameraLightSensorManager$1;-><init>(Landroid/hardware/CameraLightSensorManager;)V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    .line 131
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    if-nez v0, :cond_4

    .line 133
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, "in":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.adaptivebrightnessgo"

    const-string v4, "com.samsung.adaptivebrightnessgo.CameraLightSensorService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding Package status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Component= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UserHandle= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v2, :cond_3

    .line 140
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "in":Landroid/content/Intent;
    :cond_3
    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const-string v2, "Exception while starting service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist isAllowListedListener(Ljava/lang/String;)Z
    .locals 3
    .param p1, "listenerName"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 293
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    .local v1, "lName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const/4 v2, 0x1

    return v2

    .line 292
    .end local v1    # "lName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isAvailableEvLuxTable()Z
    .locals 6

    .line 150
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 152
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 153
    .local v0, "ev_bv":[F
    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    aput v2, v0, v1

    .line 154
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 156
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->getEvToLux([F)[F

    move-result-object v2

    .line 157
    .local v2, "lux":[F
    aget v4, v2, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 158
    return v1

    .line 160
    :cond_1
    return v3
.end method

.method public blacklist registerCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)Z
    .locals 7
    .param p1, "cameraLooper"    # Landroid/os/Looper;
    .param p2, "sensorListener"    # Landroid/hardware/SensorEventListener;
    .param p3, "sensor"    # Landroid/hardware/Sensor;

    .line 167
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/CameraLightSensorManager;->isAllowListedListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    invoke-virtual {p0}, Landroid/hardware/CameraLightSensorManager;->isAvailableEvLuxTable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string v1, "Debug_Camera_Manager"

    const-string v3, "There is no Ev-Lux table for this model "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit v0

    return v2

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/CameraLightSensorManager;->initLocked(Landroid/os/Looper;)V

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    .line 177
    const-string v3, "Debug_Camera_Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entering1 registerCameraLightSensor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    iput-short v1, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    goto :goto_0

    .line 182
    :cond_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iput-short v2, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    .line 185
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    const-string v3, "Debug_Camera_Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exit1 registerCameraLightSensor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraSensor:Landroid/hardware/Sensor;

    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.server.display.AutomaticBrightnessController"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_7

    .line 194
    :try_start_3
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-nez v3, :cond_2

    .line 195
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    .line 196
    :cond_2
    const/4 v3, 0x0

    .line 197
    .local v3, "isFaceUnlockActive":Z
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 198
    .local v4, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    nop

    .line 199
    const/16 v5, 0x100

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v5

    if-ne v5, v1, :cond_3

    move v2, v1

    .line 201
    .end local v3    # "isFaceUnlockActive":Z
    .local v2, "isFaceUnlockActive":Z
    :cond_3
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_4

    .line 202
    const-string v3, "Debug_Camera_Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lock screen, mkeyguard= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isFaceUnlockActive= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 205
    const-string v3, "CameraLightSensor_Manager"

    const-string v5, "On lock screen, FaceUnlock is true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz v3, :cond_6

    .line 207
    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v1, v5, v6}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 209
    :cond_5
    const-string v3, "CameraLightSensor_Manager"

    const-string v5, "On lock screen, FaceUnlock is false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz v3, :cond_6

    .line 211
    invoke-virtual {v3, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    .line 213
    :cond_6
    :goto_1
    const-string v3, "CameraLightSensor_Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " registered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    .end local v2    # "isFaceUnlockActive":Z
    .end local v4    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    goto :goto_2

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const-string v3, "CameraLightSensor_Manager"

    const-string v4, "Error during FaceUnlock check."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 219
    :cond_7
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz v2, :cond_8

    .line 220
    invoke-virtual {v2, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    .line 221
    :cond_8
    const-string v2, "CameraLightSensor_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    .line 185
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Landroid/hardware/CameraLightSensorManager;
    .end local p1    # "cameraLooper":Landroid/os/Looper;
    .end local p2    # "sensorListener":Landroid/hardware/SensorEventListener;
    .end local p3    # "sensor":Landroid/hardware/Sensor;
    :try_start_6
    throw v1

    .line 225
    .restart local p0    # "this":Landroid/hardware/CameraLightSensorManager;
    .restart local p1    # "cameraLooper":Landroid/os/Looper;
    .restart local p2    # "sensorListener":Landroid/hardware/SensorEventListener;
    .restart local p3    # "sensor":Landroid/hardware/Sensor;
    :cond_9
    const-string v1, "CameraLightSensor_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not in allowlisted packages of Camera Light Sensor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_a
    const-string v1, "CameraLightSensor_Manager"

    const-string/jumbo v3, "mCameraLightListener is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit v0

    .line 229
    return v2

    .line 228
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public blacklist unRegisterCameraLightSensor(Landroid/hardware/SensorEventListener;)Z
    .locals 6
    .param p1, "sensorListener"    # Landroid/hardware/SensorEventListener;

    .line 238
    const-string v0, "Debug_Camera_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering2 unRegisterCameraLightSensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 241
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    const-string v3, "CameraLightSensor_Manager"

    const-string v4, "No camera light sensor listeners present"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    .line 247
    :cond_0
    :try_start_3
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    const-string v3, "Debug_Camera_Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exit2 unRegisterCameraLightSensor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-boolean v2, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    .line 254
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {v2, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    .line 256
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    .line 258
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v3

    .line 259
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Landroid/hardware/CameraLightSensorManager;
    .end local p1    # "sensorListener":Landroid/hardware/SensorEventListener;
    :try_start_6
    throw v2

    .line 261
    .restart local p0    # "this":Landroid/hardware/CameraLightSensorManager;
    .restart local p1    # "sensorListener":Landroid/hardware/SensorEventListener;
    :cond_2
    const-string v1, "CameraLightSensor_Manager"

    const-string/jumbo v3, "mCameraLightListener List is not initialized"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v0

    .line 263
    return v2

    .line 262
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
