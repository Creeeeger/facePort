.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$1:J

    iput p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$2:I

    iput-object p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$1:J

    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;->f$3:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    sub-long/2addr v4, v1

    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v2, v1, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v9, Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;

    const-string v10, "DozeLog"

    iget-object v2, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v8, v9, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v7, v9, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-wide v4, v9, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iput v3, v9, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v2, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v3

    xor-int/lit8 v2, v7, 0x1

    aget-object v1, v1, v2

    iget v2, v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string p1, "DozeTriggers"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method
