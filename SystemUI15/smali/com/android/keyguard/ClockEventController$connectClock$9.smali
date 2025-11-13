.class public final Lcom/android/keyguard/ClockEventController$connectClock$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $clock:Lcom/android/systemui/plugins/clocks/ClockController;

.field public pastVisibility:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/clocks/ClockController;Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->$clock:Lcom/android/systemui/plugins/clocks/ClockController;

    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->$clock:Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object v1, v1, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onTimeFormatChanged(Z)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->pastVisibility:Ljava/lang/Integer;

    new-instance v2, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;-><init>(Landroid/view/ViewGroup;Lcom/android/keyguard/ClockEventController$connectClock$9;Lcom/android/keyguard/ClockEventController;)V

    iput-object v2, v1, Lcom/android/keyguard/ClockEventController;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    iget-object v1, v1, Lcom/android/keyguard/ClockEventController;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object p1, v0, Lcom/android/keyguard/ClockEventController;->smallClockFrame:Landroid/view/ViewGroup;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p1, p1, Lcom/android/keyguard/ClockEventController;->smallClockFrame:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$connectClock$9;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
