.class public final Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public mDebounceFrom:J

.field public mDevicePosture:I

.field public final mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mHandler:Landroid/os/Handler;

.field public mListening:Z

.field public mListeningAodOnlySensors:Z

.field public mListeningProxSensors:Z

.field public mListeningTouchScreenSensors:Z

.field public final mProxCallback:Ljava/util/function/Consumer;

.field public final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field public final mScreenOffUdfpsEnabled:Z

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSelectivelyRegisterProxSensors:Z

.field public final mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public mSettingRegistered:Z

.field public final mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

.field protected mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field public mUdfpsEnrolled:Z

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeSensors;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p4

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/doze/DozeSensors$1;

    invoke-direct {v5, v14, v4}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    new-instance v4, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    invoke-direct {v4, v14}, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    iput-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    new-instance v4, Lcom/android/systemui/doze/DozeSensors$2;

    invoke-direct {v4, v14}, Lcom/android/systemui/doze/DozeSensors$2;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    iput-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

    iput-object v13, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object v12, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v5, p5

    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move-object/from16 v5, p7

    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    move-object/from16 v5, p10

    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v5, p6

    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    move-object/from16 v5, p8

    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iput-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    const-string v5, "DozeSensors"

    invoke-interface {v0, v5}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f05005d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v5, "doze.prox.selectively_register"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mSelectivelyRegisterProxSensors:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    iput-object v3, v14, Lcom/android/systemui/doze/DozeSensors;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->screenOffUdfpsEnabled(I)Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    iput-object v2, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result v0

    iput v0, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    iput-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v3, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    invoke-virtual {v1, v4}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    new-instance v16, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/16 v0, 0x11

    invoke-virtual {v13, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f05005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "doze.pulse.sigmotion"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p5, v16

    move-object/from16 p6, p0

    move-object/from16 p7, v0

    move-object/from16 p8, v2

    move/from16 p9, v1

    move/from16 p10, v3

    move/from16 p11, v4

    move/from16 p12, v5

    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    new-instance v17, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/16 v0, 0x19

    invoke-virtual {v13, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v0, 0x1110150

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v5

    const/4 v9, 0x0

    const/16 v18, 0x0

    const-string v3, "doze_pulse_on_pick_up"

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    new-instance v18, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v13, v0, v12}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f050059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, "doze_pulse_on_double_tap"

    const/4 v5, 0x1

    move-object/from16 p5, v18

    move-object/from16 p6, p0

    move-object/from16 p7, v0

    move-object/from16 p8, v4

    move/from16 p9, v2

    move/from16 p10, v3

    move/from16 p11, v1

    move/from16 p12, v5

    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    new-instance v19, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorTypeMapping()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Landroid/hardware/Sensor;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    :goto_0
    array-length v3, v0

    if-ge v10, v3, :cond_1

    aget-object v3, v0, v10

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-static {v4, v3, v12}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    aput-object v3, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget v0, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    iget-object v1, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iget-object v3, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f05005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    array-length v4, v1

    if-ge v0, v4, :cond_3

    aget v0, v1, v0

    if-eqz v0, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    move v10, v11

    goto :goto_2

    :cond_3
    const-string v1, "Unsupported doze posture "

    const-string v4, "DozeParameters"

    invoke-static {v0, v1, v4}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v10, v3

    :goto_2
    iget v13, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v3, "doze_tap_gesture"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x9

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v12, v13

    move/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;[Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZIZ)V

    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 v12, 0x0

    invoke-static {v1, v0, v12}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f05005a

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v3, "doze_pulse_on_long_press"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v11, v20

    move-object/from16 v20, v13

    move-object v13, v12

    move/from16 v12, v21

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    new-instance v21, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->udfpsLongPressSensorType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-static {v1, v0, v13}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    iget-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    if-eqz v0, :cond_5

    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    if-eqz v0, :cond_6

    :cond_4
    move v5, v12

    goto :goto_3

    :cond_5
    const/4 v12, 0x1

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f05005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v3, "doze_pulse_on_auth"

    const/4 v4, 0x1

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move v13, v12

    move v12, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    new-instance v10, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v2, v14, Lcom/android/systemui/doze/DozeSensors;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v13}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    const-string v2, "doze_wake_display_gesture"

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p5, v10

    move-object/from16 p6, p0

    move-object/from16 p7, v0

    move-object/from16 p8, v2

    move/from16 p9, v1

    move/from16 p10, v3

    move/from16 p11, v4

    move/from16 p12, v5

    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZ)V

    new-instance v11, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v13}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v4

    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    move-result-wide v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "doze_wake_screen_gesture"

    const/16 v5, 0x8

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V

    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v1

    iget-boolean v2, v14, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    if-eqz v2, :cond_8

    iget-object v2, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v3, v14, Lcom/android/systemui/doze/DozeSensors;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "doze_quick_pickup_gesture"

    const/4 v5, 0x1

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v13

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v2

    move/from16 p11, v3

    move/from16 p12, v9

    move/from16 p13, v12

    invoke-direct/range {p1 .. p13}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    move-object/from16 p1, v16

    move-object/from16 p2, v17

    move-object/from16 p3, v18

    move-object/from16 p4, v19

    move-object/from16 p5, v20

    move-object/from16 p6, v21

    move-object/from16 p7, v10

    move-object/from16 p8, v11

    move-object/from16 p9, v0

    filled-new-array/range {p1 .. p9}, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    move-result-object v0

    iput-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    new-instance v1, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;

    invoke-direct {v1, v14}, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    return-object v2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final setProxListening(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->alertListeners()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    :goto_0
    return-void
.end method

.method public final updateListening()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v5, v0, v3

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    if-eqz v6, :cond_3

    :cond_0
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresProx:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    if-eqz v6, :cond_3

    :cond_1
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresAod:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    if-eqz v6, :cond_3

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    iget-boolean v8, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-ne v8, v6, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    :goto_2
    if-eqz v6, :cond_5

    move v4, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    iget-boolean v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz v5, :cond_8

    iget-object v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v6, v5, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v3, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    const/4 v7, -0x1

    iget-object v5, v5, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    invoke-interface {v6, v3, v5, v7}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    return-void
.end method
