.class public final synthetic Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field public final synthetic f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->$r8$lambda$LuQZWEXW-AUhbPf8LugYxopP2k8(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->$r8$lambda$ExEnA0m3epc0U_XIUFH74otoXB0(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
