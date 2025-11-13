.class public final Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FLASHLIGHT_VALUE:[I


# instance fields
.field public final CAMERA_FLASH_NOTIFICATION_URI:Landroid/net/Uri;

.field public final FLASHLIGHT_BRIGHTNESS_URI:Landroid/net/Uri;

.field public final FLASHLIGHT_SOS_URI:Landroid/net/Uri;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mCameraDeviceStateCallback:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$4;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mClientName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

.field public mFlashlightLevel:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsCameraFlashNotiOn:Z

.field public mIsEnabled:Z

.field public mIsLowBattery:Z

.field public mIsThermalRestricted:Z

.field public final mNotiManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mReceiver:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$2;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

.field public final mTorchPropertyInitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTorchStrengthControllable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x3ee

    const/16 v1, 0x3f1

    const/16 v2, 0x3e9

    const/16 v3, 0x3ea

    const/16 v4, 0x3ec

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/SettingsHelper;Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mTorchPropertyInitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mTorchStrengthControllable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mUiHandler:Landroid/os/Handler;

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    const-string v5, "Flashlight_brightness_level"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_BRIGHTNESS_URI:Landroid/net/Uri;

    const-string v7, "flashlight_sos_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_SOS_URI:Landroid/net/Uri;

    const-string v8, "camera_flash_notification"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->CAMERA_FLASH_NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/net/Uri;

    aput-object v5, v9, v6

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const/4 v7, 0x2

    aput-object v8, v9, v7

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsCameraFlashNotiOn:Z

    new-instance v8, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$2;

    invoke-direct {v8, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V

    new-instance v11, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$3;

    invoke-direct {v11, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V

    iput-object v11, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v12, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$4;

    invoke-direct {v12, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V

    new-instance v13, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$5;

    invoke-direct {v13, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V

    iput-object v13, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v14, p3

    iput-object v14, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-class v14, Lcom/android/systemui/settings/UserTracker;

    sget-object v15, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v15, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/settings/UserTracker;

    iput-object v14, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {v3, v11, v9}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {v11, v5}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$3;->onChanged(Landroid/net/Uri;)V

    monitor-enter p0

    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/HandlerThread;

    const-string v9, "SecFlashlightController"

    const/16 v11, 0xa

    invoke-direct {v5, v9, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v9, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    monitor-exit p0

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iget-object v9, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v9}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    invoke-virtual {v5}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v0

    const/4 v9, 0x5

    if-lt v0, v9, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    iget-boolean v9, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    if-ne v9, v0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_3
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    xor-int/2addr v0, v10

    invoke-virtual {v4, v7, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    check-cast v14, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v14, v13, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V

    invoke-virtual {v5, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mNotiManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/util/SettingsHelper;->isCameraFlashNotificationOn()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsCameraFlashNotiOn:Z

    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    :cond_4
    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final isFlashlightBlinking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsCameraFlashNotiOn:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isCameraFlashNotificationRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTorchStrengthControllable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureCameraID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mTorchPropertyInitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureCameraID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_STRENGTH_MAXIMUM_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mTorchStrengthControllable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SecFlashlightController"

    const-string v3, "Couldn\'t initialize torch property"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mTorchPropertyInitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mTorchStrengthControllable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final setFlashlightLevel(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->isTorchStrengthControllable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureCameraID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v0, p1}, Landroid/hardware/camera2/CameraManager;->turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecFlashlightController"

    const-string v2, "Couldn\'t set flashlight level"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget-object p2, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setFlashLightLevel(I)V

    :cond_2
    return-void
.end method

.method public final showUnavailableMessage()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->isFlashlightBlinking()Z

    move-result v0

    const v1, 0x7f1313e2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f1306d7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mClientName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "client.pid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mClientName:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2
    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f1313e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showWarningMessage(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public final showWarningMessage(Ljava/lang/CharSequence;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final updateFlashlightNotification(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1234

    const-string v1, "Flashlight"

    const-string v2, "SecFlashlightController"

    if-eqz p1, :cond_2

    const-string p1, "notifyNotification!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "cancelNotification due to Emergency Mode!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mNotiManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    const/4 v4, 0x0

    invoke-static {v2, v4, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1306d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->FLASHLIGHT_ONGOING:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f081286

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1306d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    const-string p1, "cancelNotification!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mNotiManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
