.class public Landroid/hardware/input/InputDeviceSensorManager;
.super Ljava/lang/Object;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MSG_SENSOR_ACCURACY_CHANGED:I = 0x1

.field private static final blacklist MSG_SENSOR_CHANGED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceSensorManager"


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mInputSensorEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInputSensorLock:Ljava/lang/Object;

.field private blacklist mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

.field private blacklist mSensorThread:Landroid/os/HandlerThread;

.field private final blacklist mSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mflushInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->flushInternal(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getFullSensorListForDevice(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInputSensorAccuracyChanged(Landroid/hardware/input/InputDeviceSensorManager;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorAccuracyChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInputSensorChanged(Landroid/hardware/input/InputDeviceSensorManager;IIIJ[F)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorChanged(IIIJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/InputDeviceSensorManager;->initializeSensors()V

    return-void
.end method

.method private blacklist findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method private blacklist flushInternal(Landroid/hardware/SensorEventListener;)Z
    .locals 8

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    iget-object v6, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManagerGlobal;->flushSensor(II)Z

    move-result v6

    if-nez v6, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getFullSensorListForDevice(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getLooperForListenerLocked(Landroid/os/Handler;)Landroid/os/Looper;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSensorForInputDevice(II)Landroid/hardware/Sensor;
    .locals 6

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p2, :cond_0

    monitor-exit v0

    return-object v4

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initializeSensors()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    invoke-direct {p0, v3}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onInputSensorAccuracyChanged(III)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorAccuracyChanged(III)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onInputSensorChanged(IIIJ[F)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "InputDeviceSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInputSensorChanged: Got sensor update for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the sensor was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->-$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "InputDeviceSensorManager"

    const-string v6, "Failed to get SensorEvent."

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iput-object v1, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iput p3, v4, Landroid/hardware/SensorEvent;->accuracy:I

    iput-wide p4, v4, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, v4, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {p6, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/hardware/Sensor;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Landroid/hardware/Sensor;-><init>(Landroid/hardware/input/InputSensorInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "InputDeviceSensorManager"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "InputDeviceSensorManager"

    const-string v2, "sensor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "InputDeviceSensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-ltz p4, :cond_9

    if-gez p3, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input device not found for sensor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_4
    invoke-virtual {v3}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The device doesn\'t have the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_5
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v2, v5, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->enableSensor(IIII)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t enable the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_6
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-nez v2, :cond_7

    new-instance v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;-><init>(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Failed registering the sensor listener"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_7
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v0

    if-gez v0, :cond_8

    new-instance v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-direct {p0, p5}, Landroid/hardware/input/InputDeviceSensorManager;->getLooperForListenerLocked(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;-><init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Looper;)V

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_8
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    :goto_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_1
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 13

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)V

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    nop

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {v2, v4}, Landroid/hardware/input/InputManagerGlobal;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v9, v5, v6}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    const-string v10, "InputDeviceSensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " still uses sensor "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v7, :cond_4

    iget-object v8, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v8, v5, v6}, Landroid/hardware/input/InputManagerGlobal;->disableSensor(II)V

    :cond_4
    goto :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Listener is not registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateInputDeviceSensorInfoLocked(I)V
    .locals 2

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/hardware/input/InputDeviceSensorManager;->populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist getSensorManager(I)Landroid/hardware/SensorManager;
    .locals 1

    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;-><init>(Landroid/hardware/input/InputDeviceSensorManager;I)V

    return-object v0
.end method

.method public blacklist onInputDeviceAdded(I)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    goto :goto_0

    :cond_0
    const-string v1, "InputDeviceSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'device added\' notification for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but it is already in the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onInputDeviceChanged(I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onInputDeviceRemoved(I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
