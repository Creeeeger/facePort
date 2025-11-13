.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

.field public final rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    invoke-direct {v0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    iput-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->applyConfigToShader()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static assignFadeParams(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iput v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iget v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iget v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iput v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    :cond_0
    return-void
.end method

.method public static synthetic getRippleShader$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final applyConfigToShader()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    iget v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    const-string v2, "in_center"

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget v3, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-virtual {p0, v2, v1, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    iget v5, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object v3, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {v3, v2}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    iget v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    iget v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    iget v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const-string v2, "in_color"

    invoke-virtual {p0, v2, v1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    const-string v1, "in_sparkle_strength"

    iget v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-virtual {p0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->assignFadeParams(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;)V

    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->assignFadeParams(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;)V

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {p0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->assignFadeParams(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;)V

    return-void
.end method
