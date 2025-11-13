.class public final synthetic Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    const-string/jumbo v0, "updateDeviceState [state="

    iget v1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v5, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logUpdateDeviceState$2;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logUpdateDeviceState$2;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V

    const-string v6, "DSRotateLockSettingCon"

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v5, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v2, v5, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_1
    :try_start_1
    const-string/jumbo v0, "updateDeviceState"

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->readPersistedSetting(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
