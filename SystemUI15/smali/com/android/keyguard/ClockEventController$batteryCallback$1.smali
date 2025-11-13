.class public final Lcom/android/keyguard/ClockEventController$batteryCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$batteryCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$batteryCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isCharging:Z

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->charge()V

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->charge()V

    :cond_0
    iput-boolean p3, p0, Lcom/android/keyguard/ClockEventController;->isCharging:Z

    return-void
.end method
