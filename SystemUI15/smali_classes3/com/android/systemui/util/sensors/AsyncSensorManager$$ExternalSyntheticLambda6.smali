.class public final synthetic Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Landroid/hardware/TriggerEventListener;

.field public final synthetic f$2:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/TriggerEventListener;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/Sensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/Sensor;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->$r8$lambda$xeVX8s9yP8g_Aq9EsV99SsT8VSs(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/Sensor;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->$r8$lambda$Bd5TQz0oXfIelfRV7ls6olMWnQQ(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
