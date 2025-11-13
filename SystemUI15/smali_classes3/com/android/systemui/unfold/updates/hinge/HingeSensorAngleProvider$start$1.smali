.class public final Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    iget-boolean v0, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HingeSensorAngleProvider#start"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    iget-object v0, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    iget-object v2, v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    iget-object v1, v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listenerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    return-void
.end method
