.class public Lcom/android/systemui/doze/DozeScreenBrightness;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public mDebugBrightnessBucket:I

.field public final mDefaultDozeBrightness:I

.field public mDevicePosture:I

.field public final mDevicePostureCallback:Lcom/android/systemui/doze/DozeScreenBrightness$1;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorValue:I

.field public final mLightSensorOptional:[Ljava/util/Optional;

.field public mPaused:Z

.field public mRegistered:Z

.field public final mScreenBrightnessDim:I

.field public final mScreenBrightnessMinimumDimAmountFloat:F

.field public mScreenOff:Z

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final mSensorToBrightness:[I

.field public final mSensorToScrimOpacity:[I

.field public mState:Lcom/android/systemui/doze/DozeMachine$State;

.field public final mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.aod_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "[",
            "Ljava/util/Optional<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    new-instance v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenBrightness$1;-><init>(Lcom/android/systemui/doze/DozeScreenBrightness;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeScreenBrightness$1;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    iput-object p10, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast p10, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p10}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    iput-object p8, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    iput-object p11, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iput-object p12, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105010c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessMinimumDimAmountFloat:F

    iget p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->defaultDozeBrightness:I

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    iget p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimBrightness:I

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessDim:I

    iget-object p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    iget-object p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    return-void
.end method


# virtual methods
.method public final clampToDimBrightnessForScreenOff(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldPlayAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessMinimumDimAmountFloat:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenBrightnessDim:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DozeScreenBrightness:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "registered="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "posture="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isLightSensorPresent()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    if-eqz v0, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "brightness_bucket"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DozeScreenBrightness.onSensorChanged"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public resetBrightnessToDefault()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string/jumbo v3, "screen_brightness"

    const v4, 0x7fffffff

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToDimBrightnessForScreenOff(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method public final setLightSensorEnabled(Z)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->isLightSensorPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    :cond_2
    :goto_1
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object p1, Lcom/android/systemui/doze/DozeScreenBrightness$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeScreenBrightness$1;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->resetBrightnessToDefault()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->resetBrightnessToDefault()V

    :goto_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_3

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    move p1, v1

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    if-eq v2, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_1
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    if-eq p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateBrightnessAndReady(Z)V
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    if-eq p1, v0, :cond_a

    :cond_0
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    :cond_1
    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    array-length v2, v1

    if-lt p1, v2, :cond_2

    goto :goto_0

    :cond_2
    aget v1, v1, p1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget-object v6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string/jumbo v7, "screen_brightness_mode"

    const/4 v8, -0x2

    invoke-interface {v6, v7, v3, v8}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string/jumbo v6, "screen_brightness"

    const v7, 0x7fffffff

    invoke-interface {v2, v6, v7, v8}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToDimBrightnessForScreenOff(I)I

    move-result v1

    invoke-interface {v5, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->isLightSensorPresent()Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_9

    if-ltz p1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    array-length v2, v1

    if-lt p1, v2, :cond_8

    goto :goto_4

    :cond_8
    aget v0, v1, p1

    :cond_9
    :goto_4
    if-ltz v0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    int-to-float p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    :cond_a
    return-void
.end method
