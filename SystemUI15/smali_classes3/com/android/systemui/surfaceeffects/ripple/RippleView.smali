.class public Lcom/android/systemui/surfaceeffects/ripple/RippleView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public centerX:F

.field public centerY:F

.field public duration:J

.field public final ripplePaint:Landroid/graphics/Paint;

.field public rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

.field public rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p1, 0x6d6

    iput-wide p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    sget-object v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    iget v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerX:F

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerY:F

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    sget-object v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ELLIPSE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v0, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    if-eqz v0, :cond_6

    move-object v1, v0

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    iget v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerX:F

    sub-float v4, v1, v2

    iget v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerY:F

    sub-float v5, v3, v0

    add-float v6, v1, v2

    add-float v7, v3, v0

    iget-object v8, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public final setCenter(FF)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerX:F

    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerY:F

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "in_center"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    return-void
.end method

.method public final setColor(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    const-string p2, "in_color"

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    invoke-direct {v0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    iput-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const-string p1, "in_color"

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v1, "in_sparkle_strength"

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz p0, :cond_3

    move-object v0, p0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public final startRipple(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
