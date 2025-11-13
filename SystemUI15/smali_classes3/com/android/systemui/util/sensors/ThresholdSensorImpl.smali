.class public Lcom/android/systemui/util/sensors/ThresholdSensorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ThresholdSensor"


# instance fields
.field private final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field private mLastBelow:Ljava/lang/Boolean;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mRegistered:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field private mSensorDelay:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private mTag:Ljava/lang/String;

.field private final mThreshold:F

.field private final mThresholdLatch:F


# direct methods
.method public static synthetic $r8$lambda$xDSPlZ5avo_vp4ZgYmUQdkE9xCs(ZJLcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->lambda$alertListenersInternal$0(ZJLcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmThreshold(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mThreshold:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresholdLatch(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mThresholdLatch:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogDebug(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;ZZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->onSensorEvent(ZZJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ThresholdSensor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/util/concurrency/Execution;FFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensor:Landroid/hardware/Sensor;

    iput p4, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mThreshold:F

    iput p5, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mThresholdLatch:F

    iput p6, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorDelay:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/util/concurrency/Execution;FFII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/util/concurrency/Execution;FFI)V

    return-void
.end method

.method private alertListenersInternal(ZJ)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$$ExternalSyntheticLambda0;-><init>(ZJ)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$alertListenersInternal$0(ZJLcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;-><init>(ZJ)V

    invoke-interface {p3, v0}, Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;->onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mTag:Ljava/lang/String;

    const-string v2, "] "

    invoke-static {v1, p0, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThresholdSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onSensorEvent(ZZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mLastBelow:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mLastBelow:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mLastBelow:Ljava/lang/Boolean;

    const-string p2, "Alerting below: "

    invoke-static {p2, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->logDebug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->alertListenersInternal(ZJ)V

    return-void
.end method

.method private registerInternal()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Registering sensor listener"

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorDelay:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Unregister sensor listener"

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mLastBelow:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRegistered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    return p0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mPaused:Z

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->unregisterInternal()V

    return-void
.end method

.method public register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->registerInternal()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mPaused:Z

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->registerInternal()V

    return-void
.end method

.method public setDelay(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorDelay:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensorDelay:I

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->unregisterInternal()V

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->registerInternal()V

    :cond_1
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mTag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->isLoaded()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mRegistered:Z

    iget-boolean v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mPaused:Z

    iget v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mThreshold:F

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mSensor:Landroid/hardware/Sensor;

    const-string/jumbo v4, "{isLoaded="

    const-string v5, ", registered="

    const-string v6, ", paused="

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->unregisterInternal()V

    return-void
.end method
