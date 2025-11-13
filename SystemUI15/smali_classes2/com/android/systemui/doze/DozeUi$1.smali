.class public final Lcom/android/systemui/doze/DozeUi$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeUi;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logPendingUnscheduleTimeTick$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPendingUnscheduleTimeTick$2;

    const-string v3, "DozeLog"

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v3, v2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    return-void
.end method
