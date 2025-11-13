.class Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;
.super Lcom/android/systemui/util/sensors/ProximitySensorImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mDevicePostureCallback:Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

.field private final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field private final mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

.field private final mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;


# direct methods
.method public static synthetic $r8$lambda$ZgOL6nUEa2fyvCBDBdbnpiEJuSg(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>([Lcom/android/systemui/util/sensors/ThresholdSensor;[Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/Execution;Lcom/android/systemui/statusbar/policy/DevicePostureController;)V
    .locals 2
    .param p1    # [Lcom/android/systemui/util/sensors/ThresholdSensor;
        .annotation runtime Lcom/android/systemui/util/sensors/PrimaryProxSensor;
        .end annotation
    .end param
    .param p2    # [Lcom/android/systemui/util/sensors/ThresholdSensor;
        .annotation runtime Lcom/android/systemui/util/sensors/SecondaryProxSensor;
        .end annotation
    .end param

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v0, p2, v0

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/Execution;)V

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    new-instance p3, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;)V

    iput-object p3, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mDevicePostureCallback:Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    iput-object p1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object p5, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object p1, p5

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    check-cast p5, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p5, p3}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    return-void
.end method

.method private chooseSensors()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    iget-object v1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-eq v0, v2, :cond_4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Register new proximity sensors newPosture="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregisterInternal()V

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_3
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mInitializedListeners:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->registerInternal()V

    iget-object v1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    new-array v2, v0, [Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-register listener "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsupported devicePosture="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PostureDependProxSensor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mDevicePostureCallback:Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No prox sensor when registering listener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "{posture="

    const-string v2, ", proximitySensor="

    const-string/jumbo v3, "}"

    invoke-static {v1, v0, v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mListenersRegisteredWhenProxUnavailable:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing listener from mListenersRegisteredWhenProxUnavailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method
