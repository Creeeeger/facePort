.class public final synthetic Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors;

    return-void
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 14

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors;

    iget v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    iget v4, p0, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    iget v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPosture:I

    if-eq v5, v4, :cond_4

    iget-object v6, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensors:[Landroid/hardware/Sensor;

    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    array-length v7, v6

    if-lt v4, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    aget-object v5, v6, v5

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v4, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPosture:I

    goto :goto_1

    :cond_2
    iget-boolean v7, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    const/4 v8, 0x0

    const-string v9, "DozeLog"

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v7, v7, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-virtual {v7, v3, v5}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v7

    iget-object v10, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v10, v10, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v10, v10, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v13, Lcom/android/systemui/doze/DozeLogger$logSensorUnregisterAttempt$4;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorUnregisterAttempt$4;

    iget-object v10, v10, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v10, v9, v12, v13, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v11, v13, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v7, v13, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    const-string v7, "posture changed"

    iput-object v7, v13, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-boolean v1, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    :cond_3
    iput v4, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPosture:I

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    iget-object v4, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v4, v4, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget v7, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPosture:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DozeSensors swap {"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} => {"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}, mRegistered="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/doze/DozeLogger$logPostureChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPostureChanged$2;

    iget-object v4, v4, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v9, v5, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput v7, v6, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object v3, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method
