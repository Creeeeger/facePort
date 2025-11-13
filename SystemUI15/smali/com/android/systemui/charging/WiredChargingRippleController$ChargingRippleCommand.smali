.class public final Lcom/android/systemui/charging/WiredChargingRippleController$ChargingRippleCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$ChargingRippleCommand;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/charging/WiredChargingRippleController$ChargingRippleCommand;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object p2, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;-><init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/charging/WiredChargingRippleController$WiredChargingRippleEvent;->CHARGING_RIPPLE_PLAYED:Lcom/android/systemui/charging/WiredChargingRippleController$WiredChargingRippleEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    :goto_0
    return-void
.end method
