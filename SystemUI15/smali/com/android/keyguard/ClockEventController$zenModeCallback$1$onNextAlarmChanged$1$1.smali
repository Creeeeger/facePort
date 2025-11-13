.class public final Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $data:Lcom/android/systemui/plugins/clocks/AlarmData;

.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/plugins/clocks/AlarmData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;->$data:Lcom/android/systemui/plugins/clocks/AlarmData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object v0, v0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$onNextAlarmChanged$1$1;->$data:Lcom/android/systemui/plugins/clocks/AlarmData;

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onAlarmDataChanged(Lcom/android/systemui/plugins/clocks/AlarmData;)V

    :cond_0
    return-void
.end method
