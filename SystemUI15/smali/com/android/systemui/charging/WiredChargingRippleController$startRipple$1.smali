.class public final Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    iget-object v0, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v4, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object v4, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v2, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object v2, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {v2, v6}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    iget-object v2, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1
    iget v2, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosY:F

    iget p1, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosX:F

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float p1, v0

    mul-float/2addr p1, v2

    invoke-virtual {v3, v1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    goto :goto_4

    :cond_3
    :goto_1
    const/4 v4, 0x1

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    int-to-float v2, v4

    sub-float/2addr v2, p1

    mul-float/2addr v2, v0

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    goto :goto_4

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    int-to-float v1, v1

    int-to-float v4, v4

    sub-float p1, v4, p1

    mul-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    goto :goto_4

    :cond_7
    :goto_3
    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    int-to-float v1, v1

    int-to-float v4, v4

    sub-float/2addr v4, v2

    mul-float/2addr v4, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    iget-object v0, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    new-instance v1, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;-><init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->startRipple(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    iget-object p1, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
