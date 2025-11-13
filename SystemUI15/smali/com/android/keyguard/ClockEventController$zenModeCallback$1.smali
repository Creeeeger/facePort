.class public final Lcom/android/keyguard/ClockEventController$zenModeCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNextAlarmChanged()V
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    new-instance v0, Lcom/android/systemui/plugins/clocks/AlarmData;

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string/jumbo v2, "status_bar_alarm"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/plugins/clocks/AlarmData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;-><init>(Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/plugins/clocks/AlarmData;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/keyguard/ClockEventController;->alarmData:Lcom/android/systemui/plugins/clocks/AlarmData;

    return-void
.end method

.method public final onZenChanged(I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->Companion:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode$Companion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode$Companion;->fromInt(I)Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Failed to get zen mode from int: "

    const-string v0, "ClockEventController"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/android/systemui/plugins/clocks/ZenData;

    sget-object v1, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->OFF:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    if-ne v0, v1, :cond_1

    const-string v1, "dnd_is_off"

    goto :goto_0

    :cond_1
    const-string v1, "dnd_is_on"

    :goto_0
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/plugins/clocks/ZenData;-><init>(Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onZenChanged$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onZenChanged$1$1;-><init>(Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/plugins/clocks/ZenData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->zenData:Lcom/android/systemui/plugins/clocks/ZenData;

    return-void
.end method
