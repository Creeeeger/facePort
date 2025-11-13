.class public final Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callChipLayoutChangeListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

.field public final callChipRect:Landroid/graphics/Rect;

.field public doubleTapCount:I

.field public final doubleTapTimeoutRunnable:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

.field public isTouchOnCallChip:Z

.field public final keyguardCallChipRect:Landroid/graphics/Rect;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mainHandler:Landroid/os/Handler;

.field public final ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public final ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

.field public final powerManager:Landroid/os/PowerManager;

.field public touchDownX:F

.field public touchDownY:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/PowerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->mainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipLayoutChangeListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapTimeoutRunnable:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

    return-void
.end method

.method public static final access$updateCallChipRect(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    new-array v6, v4, [I

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    aget v7, v6, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    aget v6, v6, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v5, v7, v3, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    new-array v4, v4, [I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    aget v2, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v5, v3, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update keyguard rect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " call chip rect="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IndicatorTouchHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
