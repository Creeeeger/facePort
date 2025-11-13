.class public final Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;
.super Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SCALE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public isHover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->SCALE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/View;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const p4, 0x3faccccd    # 1.35f

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    return-void
.end method


# virtual methods
.method public final drawSoftware(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    mul-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    if-eqz v3, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-eqz v3, :cond_3

    move v4, v2

    :cond_3
    if-eqz v3, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    sget-object v3, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    if-ne p0, v3, :cond_5

    sub-float p0, v1, v5

    sub-float v3, v2, v4

    add-float/2addr v5, v1

    add-float v6, v2, v4

    move-object v1, p1

    move v2, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-double v1, v5

    float-to-double v3, v4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-float v5, v1

    neg-float v3, v5

    move-object v1, p1

    move v2, v3

    move v4, v5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_4
    return-void
.end method

.method public final enterHardware()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->enterHardwareAnim()V

    return-void
.end method

.method public final enterHardwareAnim()V
    .locals 9

    const-string v0, "enterHardware"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    iget v4, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    iget-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x43190000    # 153.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x437f0000    # 255.0f

    :goto_0
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_1
    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_2
    invoke-direct {v3, v5, v0}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v5, v6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v7, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v3, v7}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_4

    iput-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_3

    :cond_4
    iput-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_3
    new-instance v7, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_4
    invoke-direct {v7, v8, v4}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v7, v5, v6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v7, v0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v7, v0}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v7, v0}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_5

    :cond_7
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    :goto_5
    iget v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    invoke-virtual {v7}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->enterScaleAnimation()V

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final enterScaleAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f75c28f    # 0.96f
    .end array-data
.end method

.method public final enterSoftware()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->enterSoftwareAnim()V

    return-void
.end method

.method public final enterSoftwareAnim()V
    .locals 8

    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    iget v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v0, v3, v1

    const-string v0, "glowScale"

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v7, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    new-array v2, v2, [F

    const/4 v7, 0x0

    aput v7, v2, v4

    aput v0, v2, v1

    const-string v0, "glowAlpha"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->enterScaleAnimation()V

    :cond_3
    return-void
.end method

.method public final exitHardware()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v1, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->exitScaleAnimation()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final exitHoverAnim()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exitHoverAnim "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungKeyButtonRipple"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->exitHardware()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->exitSoftware()V

    :goto_0
    return-void
.end method

.method public final exitScaleAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->SCALE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final exitSoftware()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    const-string v2, "exitSoftware"

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    iget v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v0, 0x0

    aput v0, v3, v1

    const-string v0, "glowAlpha"

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->exitScaleAnimation()V

    return-void
.end method

.method public final setDarkIntensity(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    iget-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDark:Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->startHoverAnim()V

    :cond_0
    return-void
.end method

.method public final startHoverAnim()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startHoverAnim "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungKeyButtonRipple"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->isHover:Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->enterHardwareAnim()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->enterSoftwareAnim()V

    :goto_0
    return-void
.end method
