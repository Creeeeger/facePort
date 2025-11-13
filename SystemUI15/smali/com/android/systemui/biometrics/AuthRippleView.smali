.class public final Lcom/android/systemui/biometrics/AuthRippleView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public drawDwell:Z

.field public drawRipple:Z

.field public final dwellExpandDuration:J

.field public dwellOrigin:Landroid/graphics/Point;

.field public final dwellPaint:Landroid/graphics/Paint;

.field public final dwellPulseDuration:J

.field public dwellPulseOutAnimator:Landroid/animation/Animator;

.field public dwellRadius:F

.field public final dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

.field public final fadeDuration:J

.field public fadeDwellAnimator:Landroid/animation/Animator;

.field public lockScreenColorVal:I

.field public origin:Landroid/graphics/Point;

.field public final retractDuration:J

.field public retractDwellAnimator:Landroid/animation/Animator;

.field public final retractInterpolator:Landroid/view/animation/PathInterpolator;

.field public final ripplePaint:Landroid/graphics/Paint;

.field public final rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

.field public unlockedRippleAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3d4ccccd    # 0.05f

    const v0, 0x3f6e147b    # 0.93f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractInterpolator:Landroid/view/animation/PathInterpolator;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseDuration:J

    const-wide/16 p1, 0x76c

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellExpandDuration:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->lockScreenColorVal:I

    const-wide/16 v0, 0x53

    iput-wide v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDuration:J

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDuration:J

    new-instance p2, Lcom/android/systemui/biometrics/DwellRippleShader;

    invoke-direct {p2}, Lcom/android/systemui/biometrics/DwellRippleShader;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPaint:Landroid/graphics/Paint;

    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellOrigin:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    const-string v5, "in_sparkle_strength"

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object v5, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iput v4, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    const v6, 0x3e4ccccd    # 0.2f

    iput v6, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v6, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iput v2, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    iget-object v2, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iput v4, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    const v5, 0x3e19999a    # 0.15f

    iput v5, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v5, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    const v5, 0x3f0f5c29    # 0.56f

    iput v5, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->lockScreenColorVal:I

    const/16 v2, 0x3e

    invoke-static {p1, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    const-string v3, "in_color"

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/biometrics/DwellRippleShader;->setColor(I)V

    invoke-virtual {p2, v4}, Lcom/android/systemui/biometrics/DwellRippleShader;->setProgress(F)V

    const-string p1, "in_distortion_strength"

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p1, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final fadeDwellRipple()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDwellAnimator:Landroid/animation/Animator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDwellAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iget v0, v0, Lcom/android/systemui/biometrics/DwellRippleShader;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleView$fadeDwellRipple$1$2;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDwellAnimator:Landroid/animation/Animator;

    :cond_2
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->drawDwell:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iget v1, v1, Lcom/android/systemui/biometrics/DwellRippleShader;->progress:F

    sub-float v2, v0, v1

    sub-float v3, v0, v1

    mul-float/2addr v3, v2

    sub-float v1, v0, v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellRadius:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellOrigin:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->drawRipple:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final retractDwellRipple()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDwellAnimator:Landroid/animation/Animator;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDwellAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iget v2, v2, Lcom/android/systemui/biometrics/DwellRippleShader;->progress:F

    new-array v4, v1, [F

    aput v2, v4, v0

    const/4 v2, 0x0

    aput v2, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/biometrics/AuthRippleView$retractDwellRipple$retractDwellRippleAnimator$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthRippleView$retractDwellRipple$retractDwellRippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v4, 0xff

    filled-new-array {v4, v0}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v5, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDuration:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/biometrics/AuthRippleView$retractDwellRipple$retractAlphaAnimator$1$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/AuthRippleView$retractDwellRipple$retractAlphaAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v0

    aput-object v4, v1, v3

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleView$retractDwellRipple$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthRippleView$retractDwellRipple$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDwellAnimator:Landroid/animation/Animator;

    :cond_2
    return-void
.end method

.method public final setFingerprintSensorLocation(Landroid/graphics/Point;F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const-string v3, "in_center"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->maxOf(I[I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget-object v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object v0, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {v0, v2}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const-string v3, "in_origin"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellOrigin:Landroid/graphics/Point;

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iput p2, p1, Lcom/android/systemui/biometrics/DwellRippleShader;->maxRadius:F

    iput p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellRadius:F

    return-void
.end method

.method public final setSensorLocation(Landroid/graphics/Point;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const-string v3, "in_center"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p1

    filled-new-array {v1, v2, v3}, [I

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->maxOf(I[I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, p1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {p1, v0}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    return-void
.end method
