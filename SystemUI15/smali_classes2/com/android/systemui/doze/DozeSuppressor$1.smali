.class public final Lcom/android/systemui/doze/DozeSuppressor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSuppressor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSuppressor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor$1;->this$0:Lcom/android/systemui/doze/DozeSuppressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlwaysOnSuppressedChanged(Z)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor$1;->this$0:Lcom/android/systemui/doze/DozeSuppressor;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressedChange$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressedChange$2;

    const-string v4, "DozeLog"

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method public final onPowerSaveChanged()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor$1;->this$0:Lcom/android/systemui/doze/DozeSuppressor;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    iget-object v3, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v3, v3, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/doze/DozeLogger$logPowerSaveChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPowerSaveChanged$2;

    const-string v6, "DozeLog"

    iget-object v3, v3, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v4, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_2
    return-void
.end method
