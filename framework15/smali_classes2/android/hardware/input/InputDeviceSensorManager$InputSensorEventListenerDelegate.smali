.class final Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
.super Landroid/os/Handler;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputSensorEventListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mListener:Landroid/hardware/SensorEventListener;

.field private final blacklist mSensorEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensorEvent(Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    return-void
.end method

.method private blacklist getSensorEvent(Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist addSensor(Landroid/hardware/Sensor;)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-static {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding sensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already exist!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputDeviceSensorManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    new-instance v7, Landroid/hardware/SensorEvent;

    const-wide/16 v4, 0x0

    new-array v6, v0, [F

    const/4 v3, -0x1

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorEvent;-><init>(Landroid/hardware/Sensor;IJ[F)V

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist getListener()Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method public blacklist getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v1, :cond_0

    iget-object v5, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v5, v4, v2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    :cond_0
    goto :goto_0

    :cond_1
    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist hasSensorRegistered(II)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist removeSensor(Landroid/hardware/Sensor;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-static {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist sendSensorAccuracyChanged(III)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
