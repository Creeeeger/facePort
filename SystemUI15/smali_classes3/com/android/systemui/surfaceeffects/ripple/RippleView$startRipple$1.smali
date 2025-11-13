.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    iget-object v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-virtual {v2, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setDistortionStrength(F)V

    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz p1, :cond_2

    move-object v3, p1

    :cond_2
    long-to-float p1, v0

    const-string v0, "in_time"

    invoke-virtual {v3, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
