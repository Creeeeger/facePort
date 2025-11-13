.class public final Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public plugged:Z

.field public stateKnown:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 3

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->stateKnown:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    if-nez p3, :cond_2

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->stateKnown:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->plugged:Z

    if-eqz p2, :cond_1

    iget-object p0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/android/systemui/statusbar/events/BatteryEvent;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/events/BatteryEvent;-><init>(II)V

    check-cast v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->plugged:Z

    if-eq p3, p2, :cond_4

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;->plugged:Z

    if-eqz p2, :cond_4

    iget-object p0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    new-instance p0, Lcom/android/systemui/statusbar/events/BatteryEvent;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/events/BatteryEvent;-><init>(II)V

    check-cast v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :cond_4
    return-void
.end method
