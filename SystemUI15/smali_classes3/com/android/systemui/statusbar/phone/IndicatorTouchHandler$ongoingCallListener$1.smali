.class public final Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOngoingCallStateChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipLayoutChangeListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->access$updateCallChipRect(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_0
    return-void
.end method
