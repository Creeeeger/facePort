.class public Lcom/samsung/android/animation/SemSweepWaveFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepWaveFilter.java"


# static fields
.field private static final blacklist DEBUGGABLE:Z = false

.field private static final blacklist SWIPE_DURATION:I = 0x258

.field private static final blacklist TAG:Ljava/lang/String; = "SemSweepWaveFilter"

.field private static final blacklist WAVE_ANIMATION_DURATION:I = 0x514

.field private static final blacklist WAVE_BG_ALPHA:I = 0xe1

.field private static blacklist sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final blacklist WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private blacklist incrementYdown:F

.field private blacklist incrementYup:F

.field private final blacklist leftColor:I

.field private blacklist mBaseWaveColor:Landroid/graphics/Paint;

.field private blacklist mBgLeftGreen:Landroid/graphics/Paint;

.field private blacklist mBgMiddleBlue:Landroid/graphics/Paint;

.field private blacklist mBgRightYellow:Landroid/graphics/Paint;

.field private blacklist mDeltaX:F

.field private blacklist mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private blacklist mEndXOfActionUpAnimator:F

.field private blacklist mGradientWidth:F

.field private blacklist mIsActionMove:Z

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mMiddleBlueRect:Landroid/graphics/RectF;

.field private blacklist mPathDown:Landroid/graphics/Path;

.field private blacklist mPathUp:Landroid/graphics/Path;

.field private blacklist mSweepBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private blacklist mSweepProgress:F

.field private blacklist mSweepRect:Landroid/graphics/Rect;

.field private blacklist mViewForeground:Landroid/view/View;

.field private final blacklist middleColor:I

.field private final blacklist rightColor:I

.field private blacklist waveBaseColor:I

.field private blacklist waveControlPointHeight:F

.field private blacklist waveHeight:F

.field private blacklist waveValueAnimator:Landroid/animation/ValueAnimator;

.field private blacklist waveWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeltaX(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewForeground(Lcom/samsung/android/animation/SemSweepWaveFilter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwaveHeight(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputincrementYdown(Lcom/samsung/android/animation/SemSweepWaveFilter;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputincrementYup(Lcom/samsung/android/animation/SemSweepWaveFilter;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDrawWaveEffect(Lcom/samsung/android/animation/SemSweepWaveFilter;Landroid/view/View;FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->doDrawWaveEffect(Landroid/view/View;FI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/ListView;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    const/16 v0, 0xaa

    const/16 v1, 0x13

    const/16 v2, 0x61

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    const/16 v0, 0x5c

    const/16 v1, 0x7e

    const/16 v2, 0xc

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    const/16 v0, 0xe8

    const/16 v1, 0x9c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    const/16 v0, 0xff

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method private blacklist cancelRunningAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private blacklist doDrawWaveEffect(Landroid/view/View;FI)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p3, v0, v1}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private blacklist drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 12

    iget v0, p2, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    neg-int v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    int-to-float v2, v1

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    add-float/2addr v2, v3

    mul-float/2addr v2, p3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v4, :cond_0

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    iget-object v10, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    int-to-float v3, v1

    add-float/2addr v3, v2

    iget v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    iget-object v10, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private blacklist drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget v4, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v4, p3, v4

    iget v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v7, v5

    sub-float v13, v6, v7

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    int-to-float v14, v6

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    invoke-virtual {v6, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v13

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v9, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v9, v10

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v12, v13, v9

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v7, v13

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v9, v4, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v7, v5

    add-float/2addr v7, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v7, v10

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v7, v5

    add-float v12, v13, v7

    move v7, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v13

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v9, v9, v16

    add-float/2addr v9, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v9, v10

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v9, v9, v16

    add-float v12, v13, v9

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v7, v7, v16

    add-float/2addr v7, v13

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v9, v4, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v7, v7, v17

    add-float/2addr v7, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v7, v10

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v7, v7, v17

    add-float v12, v13, v7

    move v7, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v7, v7, v17

    add-float/2addr v7, v13

    invoke-virtual {v6, v15, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v6, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    invoke-virtual {v6, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v13

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v9, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v9, v10

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v12, v13, v9

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v7, v13

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v9, v4, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v7, v5

    add-float/2addr v7, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v7, v10

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v7

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v7, v5

    add-float v12, v13, v7

    move v7, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v13

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v5

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v5, v5, v16

    add-float/2addr v5, v13

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v5, v9

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v5, v5, v16

    add-float v12, v13, v5

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v5, v5, v16

    add-float/2addr v5, v13

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v8, v5, v7

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v9, v4, v5

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v5, v5, v17

    add-float/2addr v5, v13

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v10, v5, v7

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v5

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v5, v5, v17

    add-float v12, v13, v5

    move v7, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v6, v6, v17

    add-float/2addr v6, v13

    invoke-virtual {v5, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_0

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroid/widget/ListView;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v0, v5, v6

    :cond_1
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v0, v2

    invoke-direct {v5, v3, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_2
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v5, v6, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    return-object v5
.end method

.method private blacklist getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method private blacklist initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method

.method private blacklist initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 6

    move v0, p2

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    div-int/lit8 v3, v2, 0xd

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    div-int/lit8 v3, v2, 0x4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/animation/SemSweepWaveFilter$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter$1;-><init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x514

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist removeCachedBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v3, p4, v3

    if-lez v3, :cond_0

    int-to-float p4, v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-int/lit8 v4, p3, 0x6

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    if-eqz p5, :cond_1

    const-wide/16 v3, 0x258

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    goto :goto_0

    :cond_1
    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const-wide/16 v3, 0x258

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    goto :goto_0

    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/high16 v3, 0x44160000    # 600.0f

    mul-float/2addr v4, v3

    float-to-int v3, v4

    int-to-long v3, v3

    const/4 v5, 0x0

    :goto_0
    iput v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    move v6, v1

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v7
.end method

.method public blacklist doMoveAction(Landroid/view/View;FI)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    return-void
.end method

.method public blacklist doRefresh()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->removeCachedBitmap()V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->cancelRunningAnimator()V

    return-void
.end method

.method public blacklist doUpActionWhenAnimationUpdate(IF)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public blacklist getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getEndXOfActionUpAnimator()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public blacklist initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V

    return-void
.end method

.method public bridge synthetic blacklist isAnimationBack()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public blacklist setForegroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-void
.end method
