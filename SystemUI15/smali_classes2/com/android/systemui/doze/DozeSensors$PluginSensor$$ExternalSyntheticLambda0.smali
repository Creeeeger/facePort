.class public final synthetic Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors$PluginSensor;

.field public final synthetic f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors$PluginSensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;

    sget v1, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-wide v4, v3, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    iget-wide v6, v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    add-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-gez v1, :cond_0

    iget p0, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    const-string v0, "debounce"

    iget-object v1, v3, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-virtual {p0}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object p0

    iget-object v1, v3, Lcom/android/systemui/doze/DozeSensors;->mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v0, v2, v2, p0}, Lcom/android/systemui/doze/DozeTriggers;->onSensor(IFF[F)V

    :goto_0
    return-void
.end method
