.class public final Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/ClockEventController;->isDozing:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->doze(F)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/ClockEventController;->isDozing:Z

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->doze(F)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    :cond_5
    return-void
.end method

.method public final onTimeChanged()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final onTimeFormatChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onTimeFormatChanged(Z)V

    :cond_0
    return-void
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onTimeFormatChanged(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;->onNextAlarmChanged()V

    return-void
.end method

.method public final onWeatherDataChanged(Lcom/android/systemui/plugins/clocks/WeatherData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->weatherData:Lcom/android/systemui/plugins/clocks/WeatherData;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onWeatherDataChanged(Lcom/android/systemui/plugins/clocks/WeatherData;)V

    :cond_0
    return-void
.end method
