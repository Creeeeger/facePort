.class public final Lcom/android/systemui/doze/DozeTriggers$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotificationAlerted(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string v0, "requestNotificationPulse"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-nez v0, :cond_1

    const-string p0, "Wake display false. Pulse denied."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    const-string/jumbo p0, "wakeDisplaySensor"

    invoke-virtual {v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    const-string p0, "pulseOnNotificationsDisabled"

    invoke-virtual {v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    const-string p0, "dozeSuppressed"

    invoke-virtual {v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    iget-object p0, v2, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/doze/DozeLogger$logNotificationPulse$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logNotificationPulse$2;

    const-string v1, "DozeLog"

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, v2, Lcom/android/systemui/doze/DozeLog;->mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    iget p1, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    :goto_0
    return-void
.end method
