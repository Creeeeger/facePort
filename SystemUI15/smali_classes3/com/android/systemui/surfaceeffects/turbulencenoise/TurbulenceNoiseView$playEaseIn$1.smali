.class public final Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

.field public final synthetic $initialX:F

.field public final synthetic $initialY:F

.field public final synthetic $initialZ:F

.field public final synthetic $shader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

.field public final synthetic this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;FLcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;FFLcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$shader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    iput p2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$initialX:F

    iput-object p3, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    iput p4, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$initialY:F

    iput p5, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$initialZ:F

    iput-object p6, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$shader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    iget v2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$initialX:F

    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    iget v4, v3, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->noiseMoveSpeedX:F

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    iget v2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$initialY:F

    iget v5, v3, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->noiseMoveSpeedY:F

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    iget v2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$initialZ:F

    iget v3, v3, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->noiseMoveSpeedZ:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->setNoiseMove(FFF)V

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$shader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    iget v1, v1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->luminosityMultiplier:F

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->setOpacity(F)V

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
