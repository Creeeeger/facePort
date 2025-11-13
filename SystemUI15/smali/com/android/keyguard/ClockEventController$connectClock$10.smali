.class public final Lcom/android/keyguard/ClockEventController$connectClock$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $clock:Lcom/android/systemui/plugins/clocks/ClockController;

.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/clocks/ClockController;Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$connectClock$10;->$clock:Lcom/android/systemui/plugins/clocks/ClockController;

    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$connectClock$10;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$connectClock$10;->$clock:Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$connectClock$10;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onTimeFormatChanged(Z)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
