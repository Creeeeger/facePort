.class public final Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public active:Z

.field public final config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

.field public listening:Z

.field public final motionActivityAnimator$delegate:Lkotlin/Lazy;

.field public final remainTrackBounds:Landroid/graphics/RectF;

.field public final remainTrackRenderer$delegate:Lkotlin/Lazy;

.field public final trackBounds:Landroid/graphics/RectF;

.field public final trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

.field public final view:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    new-instance v8, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->WAVE_MULTI_AREA_AUTO:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->active:Z

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackBounds:Landroid/graphics/RectF;

    new-instance v2, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;-><init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    sget-object v2, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    invoke-direct {v0, p1, v8}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;-><init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->motionActivityAnimator$delegate:Lkotlin/Lazy;

    return-void

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    iget-object v2, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v5

    iget-object v2, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sget-object v9, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result v3

    sub-float v6, v2, v3

    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v7

    iget-object v8, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->trackPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result v3

    sub-float v11, v2, v3

    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v2

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result v3

    sub-float v12, v2, v3

    iget-object v2, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v2

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result v3

    add-float v14, v3, v2

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result v15

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result v16

    iget-object v1, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->trackBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    iget v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->thumbX:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-static {v3}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v3

    const/4 v4, 0x2

    int-to-float v5, v4

    div-float/2addr v3, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget v8, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->numWaves:I

    if-ge v7, v8, :cond_10

    iget-object v9, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->pathPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->evaluator:Landroid/animation/ArgbEvaluator;

    iget v11, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    iget-object v12, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    iget v13, v12, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-nez v7, :cond_1

    iget v12, v12, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    goto :goto_1

    :cond_1
    iget v12, v12, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v13, v12}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v10, 0x1

    if-ne v7, v10, :cond_2

    const/16 v11, 0xba

    goto :goto_2

    :cond_2
    const/16 v11, 0xc8

    :goto_2
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-int v9, v8, v7

    int-to-float v9, v9

    int-to-float v8, v8

    div-float/2addr v9, v8

    iget-object v8, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const v11, 0x3f8ccccd    # 1.1f

    div-float/2addr v8, v11

    sub-float/2addr v8, v3

    div-float/2addr v8, v5

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v12}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v12

    sub-float/2addr v8, v12

    mul-float/2addr v8, v9

    iget-object v9, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget v9, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->thumbX:F

    invoke-static {v9}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v9

    iget v12, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->stepX:I

    if-lez v12, :cond_f

    invoke-static {v6, v9, v12}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v13

    if-ltz v13, :cond_d

    move/from16 v16, v2

    move v15, v6

    :goto_3
    int-to-float v4, v15

    iget v6, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phase:F

    add-int/lit8 v2, v7, 0x1

    int-to-float v2, v2

    mul-float/2addr v6, v2

    div-float v2, v4, v1

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v20, v15

    float-to-double v14, v2

    mul-double v14, v14, v18

    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->cycleCount:I

    move/from16 v19, v12

    int-to-double v11, v2

    mul-double/2addr v14, v11

    float-to-double v11, v6

    add-double/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, v4, v2

    iget-object v6, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    iget-object v14, v6, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    iget v15, v6, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathLegth:F

    mul-float/2addr v2, v15

    iget-object v15, v6, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    const/4 v10, 0x0

    invoke-virtual {v14, v2, v15, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v2, v6, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    const/4 v6, 0x1

    aget v2, v2, v6

    mul-float v6, v8, v2

    float-to-double v14, v6

    mul-double/2addr v14, v11

    float-to-double v10, v8

    sub-double/2addr v14, v10

    float-to-double v10, v2

    mul-double/2addr v14, v10

    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    float-to-double v10, v2

    mul-double/2addr v14, v10

    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    iget v2, v2, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    float-to-double v10, v2

    mul-double/2addr v14, v10

    const v2, 0x3f8ccccd    # 1.1f

    float-to-double v10, v2

    mul-double/2addr v14, v10

    iget-object v6, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v6, v10

    cmpg-float v10, v4, v6

    const/high16 v11, 0x3f800000    # 1.0f

    if-gtz v10, :cond_3

    move v12, v3

    const/4 v10, 0x0

    float-to-double v2, v10

    mul-double/2addr v14, v2

    move/from16 v22, v1

    goto :goto_5

    :cond_3
    move v12, v3

    cmpl-float v2, v4, v6

    const/high16 v10, 0x3e800000    # 0.25f

    if-lez v2, :cond_4

    int-to-float v2, v9

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v6, v3, v6}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    cmpg-float v3, v4, v2

    if-gtz v3, :cond_4

    sub-float v3, v4, v6

    div-float/2addr v3, v2

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    move/from16 v22, v1

    const v1, 0x3f2147ae    # 0.63f

    invoke-direct {v2, v6, v10, v1, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    :goto_4
    float-to-double v1, v1

    mul-double/2addr v14, v1

    goto :goto_5

    :cond_4
    move/from16 v22, v1

    sub-float v1, v4, v6

    int-to-float v2, v9

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v6, v3, v6}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2147ae    # 0.63f

    invoke-direct {v2, v10, v10, v3, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sub-float v1, v11, v1

    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v1

    sub-float/2addr v1, v12

    float-to-double v1, v1

    add-double/2addr v1, v14

    double-to-float v1, v1

    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_a

    cmpg-float v2, v3, v4

    if-gtz v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    iget-object v3, v2, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    array-length v6, v3

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    const/4 v10, 0x0

    aget-object v11, v3, v10

    iget v10, v11, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_5

    iget v2, v11, Landroid/graphics/PointF;->y:F

    :goto_6
    const/4 v11, 0x1

    const/4 v14, 0x2

    goto :goto_8

    :cond_5
    aget-object v3, v3, v6

    iget v10, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v10, v4, v10

    if-ltz v10, :cond_6

    iget v2, v3, Landroid/graphics/PointF;->y:F

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_7
    sub-int v10, v6, v3

    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    add-int v10, v3, v6

    const/4 v14, 0x2

    div-int/2addr v10, v14

    iget-object v15, v2, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    aget-object v15, v15, v10

    iget v15, v15, Landroid/graphics/PointF;->x:F

    cmpg-float v15, v4, v15

    if-gez v15, :cond_7

    move v6, v10

    goto :goto_7

    :cond_7
    move v3, v10

    goto :goto_7

    :cond_8
    const/4 v14, 0x2

    iget-object v2, v2, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    aget-object v6, v2, v6

    iget v10, v6, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v3

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    const/4 v15, 0x0

    cmpg-float v21, v10, v15

    if-nez v21, :cond_9

    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_8

    :cond_9
    sub-float v3, v4, v3

    div-float/2addr v3, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v2, v3, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    :goto_8
    iget v3, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    invoke-static {v1, v2, v3, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    const/4 v11, 0x1

    const/4 v14, 0x2

    goto :goto_9

    :goto_a
    int-to-float v3, v2

    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v2, v6

    add-float/2addr v2, v3

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_b

    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v3

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v16, v1

    :goto_b
    move/from16 v6, v20

    goto :goto_c

    :cond_b
    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_b

    :goto_c
    if-eq v6, v13, :cond_c

    add-int v15, v6, v19

    move v10, v11

    move v3, v12

    move/from16 v12, v19

    move/from16 v1, v22

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v11, 0x3f8ccccd    # 1.1f

    goto/16 :goto_3

    :cond_c
    move/from16 v10, v16

    goto :goto_d

    :cond_d
    move/from16 v22, v1

    move v12, v3

    move v14, v4

    const/4 v10, 0x0

    :goto_d
    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    int-to-float v3, v2

    add-float/2addr v3, v12

    int-to-float v4, v9

    invoke-virtual {v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v6

    add-float/2addr v6, v12

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v1, v3, v4, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v3, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->pathPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phase:F

    iget v3, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phaseShift:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phase:F

    iget v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_e

    goto :goto_e

    :cond_e
    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move v6, v2

    move v2, v3

    move v3, v12

    move v4, v14

    move/from16 v1, v22

    goto/16 :goto_0

    :cond_f
    move/from16 v19, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step must be positive, was: "

    const-string v2, "."

    move/from16 v3, v19

    invoke-static {v3, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_f
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getThumbX()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final invalidateSelf()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->onLayout(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->onLayout(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->onThumbLocationChanged(F)V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->onThumbLocationChanged(F)V

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->onThumbLocationChanged(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method
