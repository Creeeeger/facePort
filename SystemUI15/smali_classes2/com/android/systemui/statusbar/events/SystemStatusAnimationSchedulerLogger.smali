.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN_ANIMATION_STATE"

    goto :goto_0

    :cond_0
    const-string p0, "SHOWING_PERSISTENT_DOT"

    goto :goto_0

    :cond_1
    const-string p0, "ANIMATING_OUT"

    goto :goto_0

    :cond_2
    const-string p0, "RUNNING_CHIP_ANIM"

    goto :goto_0

    :cond_3
    const-string p0, "ANIMATING_IN"

    goto :goto_0

    :cond_4
    const-string p0, "ANIMATION_QUEUED"

    goto :goto_0

    :cond_5
    const-string p0, "IDLE"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final logUpdateEvent(Lcom/android/systemui/statusbar/events/StatusEvent;I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;I)V

    const-string v2, "SystemStatusAnimationSchedulerLog"

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v1

    iput v1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput p2, v2, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
