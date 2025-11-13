.class public final Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animate:Z

.field public heightAnimator:Landroid/animation/ValueAnimator;

.field public heightFraction:F

.field public lastFrameTime:J

.field public lineAmplitude:F

.field public final linePaint:Landroid/graphics/Paint;

.field public final matchedWaveEndpoint:F

.field public final minWaveEndpoint:F

.field public final path:Landroid/graphics/Path;

.field public phaseOffset:F

.field public phaseSpeed:F

.field public strokeWidth:F

.field public transitionEnabled:Z

.field public final transitionPeriods:F

.field public waveLength:F

.field public final wavePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->path:Landroid/graphics/Path;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lastFrameTime:J

    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionPeriods:F

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->minWaveEndpoint:F

    const v2, 0x3f19999a    # 0.6f

    iput v2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->matchedWaveEndpoint:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionEnabled:Z

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 p0, 0x4d

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SquigglyProgress#draw"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->drawTraced(Landroid/graphics/Canvas;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public final drawTraced(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->animate:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->phaseOffset:F

    iget-wide v4, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lastFrameTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget v5, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->phaseSpeed:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    iget v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->waveLength:F

    rem-float/2addr v4, v3

    iput v4, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->phaseOffset:F

    iput-wide v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lastFrameTime:J

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v4, v2

    mul-float v2, v4, v1

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionEnabled:Z

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->matchedWaveEndpoint:F

    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    iget v5, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->minWaveEndpoint:F

    invoke-static {v8, v3, v1}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v1

    invoke-static {v5, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    :cond_2
    :goto_0
    mul-float/2addr v1, v4

    iget v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->phaseOffset:F

    neg-float v3, v3

    iget v5, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->waveLength:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v9, v3, v5

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionEnabled:Z

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    new-instance v5, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$drawTraced$computeAmplitude$1;-><init>(Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;F)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v1, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v11, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->waveLength:F

    div-float/2addr v11, v6

    move v14, v1

    move v1, v9

    :goto_2
    cmpg-float v6, v1, v3

    if-gez v6, :cond_4

    neg-float v10, v10

    add-float v6, v1, v11

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float v12, v11, v12

    add-float v15, v12, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v5, v1, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v12, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->path:Landroid/graphics/Path;

    move v13, v15

    move/from16 v16, v1

    move/from16 v17, v6

    move/from16 v18, v1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v14, v1

    move v1, v6

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lineAmplitude:F

    iget v3, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->strokeWidth:F

    add-float/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v1

    invoke-virtual {v7, v8, v3, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v5, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionEnabled:Z

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->waveLength:F

    div-float/2addr v1, v2

    const v2, 0x40c90fdb

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lineAmplitude:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->heightFraction:F

    mul-float/2addr v1, v2

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final onLevelChange(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->animate:Z

    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->updateColors(II)V

    return-void
.end method

.method public final setAnimate(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->animate:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->animate:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lastFrameTime:J

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->heightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget p1, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->heightFraction:F

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->animate:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->animate:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x226

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    new-instance v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$animate$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$animate$1$1;-><init>(Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$animate$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress$animate$1$2;-><init>(Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->heightAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->updateColors(II)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->updateColors(II)V

    return-void
.end method

.method public final updateColors(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    const/16 v0, 0x4d

    int-to-float v0, v0

    int-to-float p2, p2

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p2, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
