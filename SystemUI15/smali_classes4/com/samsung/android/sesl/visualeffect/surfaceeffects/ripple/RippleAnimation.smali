.class public final Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final rippleShader:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;

    invoke-direct {v6}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    iget p0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    iget v1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    const-string v2, "in_center"

    invoke-virtual {v6, v2, p0, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iget-object p0, v6, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;

    iget v1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    iget v2, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->scale:F

    mul-float/2addr v1, v2

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {v0, v2}, [Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const-string p0, "in_pixelDensity"

    iget v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-virtual {v6, p0, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget p0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    iget v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    const-string v0, "!!!!color:"

    const-string v1, "sparkleColor"

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "in_color"

    invoke-virtual {v6, v0, p0}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    iget p0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleColor:I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v3, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    const-string v0, "!!!!sparkleColor:"

    const-string v2, ","

    invoke-static {v0, v3, v2, v4, v2}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",1.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "in_sparkleColor"

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v6

    move v2, v3

    move v3, v4

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    const-string p0, "in_sparkle_strength"

    iget v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-virtual {v6, p0, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p0, v6, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {p0, v0}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation;->assignFadeParams(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;)V

    iget-object p0, v6, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {p0, v0}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation;->assignFadeParams(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;)V

    iget-object p0, v6, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object p1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {p0, p1}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimation;->assignFadeParams(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static assignFadeParams(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iput v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iget v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iget v0, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iput v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iget p1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    iput p1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    :cond_0
    return-void
.end method
