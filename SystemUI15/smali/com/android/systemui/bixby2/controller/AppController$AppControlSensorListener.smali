.class Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorListener;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorListener;-><init>(Lcom/android/systemui/bixby2/controller/AppController;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const-string v0, "AppControlSensorListener.onSensorChanged, Rotation: "

    const-string v1, "AppController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorListener;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmCurOrientation(Lcom/android/systemui/bixby2/controller/AppController;I)V

    :cond_0
    return-void
.end method
