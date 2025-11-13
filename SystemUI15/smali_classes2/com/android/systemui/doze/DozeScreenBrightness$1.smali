.class public final Lcom/android/systemui/doze/DozeScreenBrightness$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeScreenBrightness;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeScreenBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->this$0:Lcom/android/systemui/doze/DozeScreenBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->this$0:Lcom/android/systemui/doze/DozeScreenBrightness;

    iget v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    if-eq v0, p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:[Ljava/util/Optional;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDevicePosture:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DozeScreenBrightness swap {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} => {"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, mRegistered="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPostureChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPostureChanged$2;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "DozeLog"

    invoke-virtual {p1, v4, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput v2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_3
    :goto_1
    return-void
.end method
