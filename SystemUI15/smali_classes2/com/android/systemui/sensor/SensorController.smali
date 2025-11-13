.class public abstract Lcom/android/systemui/sensor/SensorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# instance fields
.field public final sensorInfos:Landroid/util/SparseArray;

.field public final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensor/SensorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensor/SensorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    new-instance p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;-><init>()V

    const v1, 0x10036

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrigger="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SensorController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController;->onTrigger()V

    return-void
.end method

.method public onTrigger()V
    .locals 1

    const-string p0, "onTrigger=null"

    const-string v0, "SensorController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unregister$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "SensorController"

    if-nez v1, :cond_1

    const-string/jumbo p0, "unregister - not supported sensor type=1"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    if-nez v1, :cond_2

    const-string/jumbo p0, "unregister - already unregistered sensor type=1"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string/jumbo p0, "unregister"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return-void
.end method
