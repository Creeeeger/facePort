.class public final synthetic Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field public final synthetic f$1:Landroid/hardware/Sensor;

.field public final synthetic f$2:Landroid/hardware/TriggerEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/Sensor;Landroid/hardware/TriggerEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/TriggerEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/Sensor;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/TriggerEvent;

    if-eqz v1, :cond_0

    sget v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/systemui/doze/DozeSensors;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/doze/DozeSensors$DozeSensorsUiEvent;->ACTION_AMBIENT_GESTURE_PICKUP:Lcom/android/systemui/doze/DozeSensors$DozeSensorsUiEvent;

    check-cast v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    iget-boolean v2, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mReportsTouchCoordinates:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v3, v3, Lcom/android/systemui/doze/DozeSensors;->mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    iget v4, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    iget-object p0, p0, Landroid/hardware/TriggerEvent;->values:[F

    check-cast v3, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    iget-object v3, v3, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-virtual {v3, v4, v1, v2, p0}, Lcom/android/systemui/doze/DozeTriggers;->onSensor(IFF[F)V

    iget-boolean p0, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-nez p0, :cond_2

    iget-boolean p0, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mImmediatelyReRegister:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    :cond_2
    return-void
.end method
