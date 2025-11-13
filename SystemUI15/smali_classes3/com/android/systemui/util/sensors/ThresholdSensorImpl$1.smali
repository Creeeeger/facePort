.class Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/sensors/ThresholdSensorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    invoke-static {v2}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->-$$Nest$fgetmThreshold(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;)F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    invoke-static {v4}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->-$$Nest$fgetmThresholdLatch(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sensor value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->-$$Nest$mlogDebug(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;->-$$Nest$monSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensorImpl;ZZJ)V

    return-void
.end method
