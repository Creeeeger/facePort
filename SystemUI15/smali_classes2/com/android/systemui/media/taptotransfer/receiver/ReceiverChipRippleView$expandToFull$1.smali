.class public final Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $startingPercentage:F

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->$startingPercentage:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-static {v2}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->access$getRippleShader(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->$startingPercentage:F

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float v5, v4, v3

    mul-float/2addr v5, p1

    add-float/2addr v5, v3

    invoke-virtual {v2, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-static {p1}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->access$getRippleShader(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-static {v2}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->access$getRippleShader(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rawProgress:F

    sub-float v2, v4, v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setDistortionStrength(F)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-static {p1}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->access$getRippleShader(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-static {v2}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->access$getRippleShader(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rawProgress:F

    sub-float/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-static {p1}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->access$getRippleShader(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object p1

    long-to-float v0, v0

    const-string v1, "in_time"

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
