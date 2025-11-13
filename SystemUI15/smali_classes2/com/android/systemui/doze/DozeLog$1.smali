.class Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeLog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeLog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEmergencyCallAction()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLogger;->logEmergencyCall()V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    iget v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    return-void
.end method

.method public final onFinishedGoingToSleep(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logScreenOff$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logScreenOff$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DozeLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logKeyguardBouncerChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logKeyguardBouncerChanged$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DozeLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logKeyguardVisibilityChange$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logKeyguardVisibilityChange$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "DozeLog"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    iget-object v1, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logScreenOn$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logScreenOn$2;

    const-string v4, "DozeLog"

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v0, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    iget v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    return-void
.end method
