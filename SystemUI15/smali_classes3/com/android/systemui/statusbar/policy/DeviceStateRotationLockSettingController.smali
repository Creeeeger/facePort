.class public final Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mDeviceState:I

.field public mDeviceStateCallback:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mDeviceStateRotationLockSettingsListener:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController$$ExternalSyntheticLambda1;

.field public final mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

.field public final mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mRotationPolicyWrapper:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mRotationPolicyWrapper:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    invoke-virtual {p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DeviceStateRotationLockSettingsManager"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mPostureRotationLockDefaults: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mPostureDefaultRotationLockSettings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureDefaultRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDeviceStateRotationLockSettings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mPostureRotationLockFallbackSettings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSettableDeviceStates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSettableDeviceStates:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p1, "DeviceStateRotationLockSettingController"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mDeviceState: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final onRotationLockStateChanged(ZZ)V
    .locals 9

    iget p2, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->getRotationLockSetting(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v5, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logRotationLockStateChanged$2;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logRotationLockStateChanged$2;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "DSRotateLockSettingCon"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, v8, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean p1, v8, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v1, v8, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    sget-object p2, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logSaveNewRotationLockSetting$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$logSaveNewRotationLockSetting$2;

    invoke-virtual {v3, v6, v4, p2, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput p0, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v3, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p2, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/devicestate/PosturesHelper;->deviceStateToPosture(I)I

    move-result p0

    iget-object p2, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_3

    iget-object p2, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    :cond_3
    iget-object p2, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p2, p0, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    return-void
.end method

.method public final readPersistedSetting(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceStateRotationLockSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->getRotationLockSetting(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mRotationPolicyWrapper:Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    invoke-interface {v2}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->isRotationLocked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mLogger:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v6, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;

    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;-><init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "DSRotateLockSettingCon"

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p1, v6, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v0, v6, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iput-boolean v1, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v3, v6, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;->mDeviceState:I

    if-eq v1, v3, :cond_2

    const-string p0, "DeviceStateRotationLockSettingController#readPersistedSetting"

    invoke-interface {v2, v1, p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;->setRotationLock(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
