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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CameraLightSensor_Manager"

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/CameraLightSensorManager;->DEBUG:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->DEBUG_HANDLER:Z

    const-string v2, "Debug_Camera_Manager"

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->DBG_TAG:Ljava/lang/String;

    const-string v2, "Debug_Camera_Listener"

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->LISTENER_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_SERVICE_START_CAMERA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_MANAGER_UPDATE_LUX:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->IPC_SERVICE_UNREGISTER_CONNECTION:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_START_CAMERA:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_STOP_CAMERA:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_MANAGER_UPDATE_LUX:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_SERVICE_CAMERA_LOOP:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/CameraLightSensorManager;->MSG_MANAGER_LISTENER_LOOP:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SENSOR_SUPPORT_SABC_LITE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSABCLite:Ljava/lang/Boolean;

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/CameraLightSensorManager;->initAllowListListenerList()V

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mConnectionFailed:Z

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    return-void
.end method

.method private blacklist initAllowListListenerList()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSABCLite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.samsung.adaptivebrightnessgo"

    const-string v2, "com.android.server.display.AutomaticBrightnessController"

    const-string v3, "com.sec.android.app.camera"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.android.app.aodservice.ui.AODUiController"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v2, "com.samsung.android.app.aodservice.ui.model"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.samsung.android.gesture.AdaptiveBrightnessController"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.samsung.android.gesture.PocketModeEvent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.sec.android.sdhms.thermal.overheatcontrol.OverheatSensorChecker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.sec.android.sdhms.thermal.siop.scenario.HighBrightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    const-string v1, "com.salab.act"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private blacklist initLocked(Landroid/os/Looper;)V
    .locals 6

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const-string v1, "CameraLightSensor_Manager"

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraManagerThread"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;-><init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

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

    goto :goto_0

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

    new-instance v0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-direct {v0, p0, p1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;-><init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    :goto_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mSystemMessenger:Landroid/os/Messenger;

    :cond_1
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2

    const-string v0, "Creating new connection for service."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/hardware/CameraLightSensorManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/CameraLightSensorManager$1;-><init>(Landroid/hardware/CameraLightSensorManager;)V

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    :cond_2
    iget-boolean v0, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.adaptivebrightnessgo"

    const-string v4, "com.samsung.adaptivebrightnessgo.CameraLightSensorService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightSensorConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/CameraLightSensorManager;->mProcessBinded:Z

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

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Exception while starting service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist isAllowListedListener(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mAllowListListenerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method protected blacklist isAvailableEvLuxTable()Z
    .locals 6

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->getEvToLux([F)[F

    move-result-object v2

    aget v4, v2, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method public blacklist registerCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)Z
    .locals 7

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-interface {p2}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/CameraLightSensorManager;->isAllowListedListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/hardware/CameraLightSensorManager;->isAvailableEvLuxTable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Debug_Camera_Manager"

    const-string v3, "There is no Ev-Lux table for this model "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/CameraLightSensorManager;->initLocked(Landroid/os/Looper;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

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

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-short v1, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-short v2, p0, Landroid/hardware/CameraLightSensorManager;->listenerRegistered:S

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    iput-object p3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraSensor:Landroid/hardware/Sensor;

    invoke-interface {p2}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.server.display.AutomaticBrightnessController"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_7

    :try_start_3
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    :cond_2
    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Landroid/hardware/CameraLightSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    nop

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v5

    if-ne v5, v1, :cond_3

    move v2, v1

    :cond_3
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_4

    const-string v3, "Debug_Camera_Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lock screen, mkeyguard= "

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

    :cond_4
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mkeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "CameraLightSensor_Manager"

    const-string v5, "On lock screen, FaceUnlock is true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v1, v5, v6}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    const-string v3, "CameraLightSensor_Manager"

    const-string v5, "On lock screen, FaceUnlock is false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-virtual {v3, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

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

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "CameraLightSensor_Manager"

    const-string v4, "Error during FaceUnlock check."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_2

    :cond_7
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

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

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

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

    :cond_a
    const-string v1, "CameraLightSensor_Manager"

    const-string/jumbo v3, "mCameraLightListener is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public blacklist unRegisterCameraLightSensor(Landroid/hardware/SensorEventListener;)Z
    .locals 6

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

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager;->mLockIPC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CameraLightSensor_Manager"

    const-string v4, "No camera light sensor listeners present"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :cond_0
    :try_start_3
    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager;->mCameraLightListener:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    iput-boolean v2, p0, Landroid/hardware/CameraLightSensorManager;->mEnabledService:Z

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    invoke-virtual {v2, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager;->mSystemHandler:Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v3

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :cond_2
    const-string v1, "CameraLightSensor_Manager"

    const-string/jumbo v3, "mCameraLightListener List is not initialized"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
