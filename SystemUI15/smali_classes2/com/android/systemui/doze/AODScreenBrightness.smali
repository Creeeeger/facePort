.class public final Lcom/android/systemui/doze/AODScreenBrightness;
.super Lcom/android/systemui/doze/DozeScreenBrightness;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBrightnessValues:[I

.field public mDozeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V
    .locals 0
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

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V

    const/4 p1, 0x1

    const/16 p2, 0x61

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_BRIGHTNESS_CONTROL:Z

    if-eqz p1, :cond_0

    const p1, 0x10002

    iput p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final resetBrightnessToDefault()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/doze/AODScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget p2, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/doze/DozeMachine$Service;->semSetDozeScreenBrightness(II)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/high16 p1, 0x3f800000    # 1.0f

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 p1, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    :goto_0
    return-void
.end method

.method public final updateDozeBrightness(III)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    const/4 v3, -0x1

    if-ne p3, v3, :cond_3

    if-ltz p2, :cond_2

    iget-object p3, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    array-length v4, p3

    if-lt p2, v4, :cond_1

    goto :goto_1

    :cond_1
    aget p2, p3, p2

    move p3, p2

    goto :goto_2

    :cond_2
    :goto_1
    move p3, v3

    :cond_3
    :goto_2
    if-ltz p3, :cond_4

    move v1, v2

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/doze/DozeMachine$Service;->semSetDozeScreenBrightness(II)V

    :cond_6
    return-void
.end method
