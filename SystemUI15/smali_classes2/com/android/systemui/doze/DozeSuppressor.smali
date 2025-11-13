.class public final Lcom/android/systemui/doze/DozeSuppressor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public mIsCarModeEnabled:Z

.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/DozeLog;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/DozeHost;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mIsCarModeEnabled:Z

    new-instance v0, Lcom/android/systemui/doze/DozeSuppressor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeSuppressor$1;-><init>(Lcom/android/systemui/doze/DozeSuppressor;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeSuppressor;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeSuppressor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isCarModeEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mIsCarModeEnabled:Z

    const-string v2, " hasPendingAuth="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isProvisioned="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, " isAlwaysOnSuppressed="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    const-string v2, " aodPowerSaveActive="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onUiModeTypeChanged(I)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mIsCarModeEnabled:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mIsCarModeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "DozeLog"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-eqz p1, :cond_3

    iget-object p1, v2, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;

    iget-object p1, p1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_2

    :cond_3
    iget-object p1, v2, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logCarModeEnded$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logCarModeEnded$2;

    iget-object p1, p1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 5

    sget-object p1, Lcom/android/systemui/doze/DozeSuppressor$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p1, 0x0

    if-nez p2, :cond_2

    const-string p2, "device_unprovisioned"

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "has_pending_auth"

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DozeLog"

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/doze/DozeLogger$logImmediatelyEndDoze$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logImmediatelyEndDoze$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p2, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_4
    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mIsCarModeEnabled:Z

    if-eqz p2, :cond_5

    iget-object p2, v2, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;

    iget-object p2, p2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p2, v1, v0, v2, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_5
    :goto_2
    return-void
.end method
