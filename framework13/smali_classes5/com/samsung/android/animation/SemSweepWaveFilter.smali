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

    .line 113
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/ListView;)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    .line 42
    const/16 v0, 0x61

    const/16 v1, 0xaa

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    .line 46
    const/16 v1, 0xc

    const/16 v2, 0x5c

    const/16 v3, 0x7e

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    .line 50
    const/16 v2, 0xe8

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    .line 59
    const/16 v3, 0xff

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    .line 63
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    .line 65
    const/high16 v3, 0x43c80000    # 400.0f

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    .line 71
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    .line 73
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 75
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 79
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 83
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    .line 85
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    .line 95
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    .line 97
    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 99
    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 101
    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    .line 105
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    .line 107
    iput-boolean v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    .line 109
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    .line 115
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    .line 119
    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    .line 120
    invoke-direct {p0, v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    .line 123
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    .line 125
    return-void
.end method

.method private blacklist cancelRunningAnimator()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 452
    :cond_0
    return-void
.end method

.method private blacklist doDrawWaveEffect(Landroid/view/View;FI)V
    .locals 4
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    .line 171
    .local v0, "sweepProgress":F
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v1

    .line 177
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    if-eqz v3, :cond_0

    .line 181
    invoke-interface {v2, p3, v0, v1}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 186
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    if-eqz v2, :cond_2

    .line 197
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 199
    :cond_2
    return-void
.end method

.method private blacklist drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rc"    # Landroid/graphics/Rect;
    .param p3, "sweepProgress"    # F

    .line 455
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 456
    .local v0, "rcTopOffset":I
    neg-int v1, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 457
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    .line 458
    .local v1, "listWidth":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 460
    int-to-float v2, v1

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    add-float/2addr v2, v3

    mul-float/2addr v2, p3

    .line 462
    .local v2, "shift":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_0

    .line 466
    sub-float v4, v2, v3

    .line 467
    .local v4, "gradientLeft":F
    div-float/2addr v3, v6

    add-float/2addr v3, v4

    .line 471
    .local v3, "waveCenterX":F
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, v3

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 473
    .end local v3    # "waveCenterX":F
    .end local v4    # "gradientLeft":F
    goto :goto_0

    :cond_0
    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 477
    int-to-float v4, v1

    add-float/2addr v4, v2

    .line 478
    .restart local v4    # "gradientLeft":F
    div-float/2addr v3, v6

    add-float/2addr v3, v4

    .line 482
    .restart local v3    # "waveCenterX":F
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, v3

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 484
    .end local v3    # "waveCenterX":F
    .end local v4    # "gradientLeft":F
    goto :goto_0

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 489
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 491
    :goto_0
    return-void
.end method

.method private blacklist drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "waveCenterX"    # F
    .param p4, "drawLeftFirst"    # Z
    .param p5, "leftPaint"    # Landroid/graphics/Paint;
    .param p6, "rightPaint"    # Landroid/graphics/Paint;

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget v4, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v4, p3, v4

    .line 496
    .local v4, "startXdown":F
    iget v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v7, v5

    sub-float v13, v6, v7

    .line 497
    .local v13, "startYdown":F
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    int-to-float v14, v6

    .line 498
    .local v14, "listWidth":F
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 499
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 500
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    invoke-virtual {v6, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 501
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v9, v13, v8

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v11, v13, v10

    sub-float/2addr v11, v8

    add-float v12, v13, v10

    move v8, v9

    move v9, v4

    move v10, v11

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 505
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v8, v13, v7

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v9

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v10

    mul-float v12, v7, v5

    add-float/2addr v12, v13

    sub-float/2addr v12, v9

    add-float v16, v4, v10

    mul-float/2addr v7, v5

    add-float v17, v13, v7

    move v7, v4

    move v9, v11

    move v10, v12

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 510
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v9, v8, v5

    add-float/2addr v9, v13

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v9, v10

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v11, v8, v16

    add-float/2addr v11, v13

    sub-float v10, v11, v10

    mul-float v8, v8, v16

    add-float v12, v13, v8

    move v8, v9

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 515
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v8, v7, v16

    add-float/2addr v8, v13

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v9

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v10

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v12, v7, v17

    add-float/2addr v12, v13

    sub-float/2addr v12, v9

    add-float v18, v4, v10

    mul-float v7, v7, v17

    add-float v19, v13, v7

    move v7, v4

    move v9, v11

    move v10, v12

    move/from16 v11, v18

    move/from16 v12, v19

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 520
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v7, v7, v17

    add-float/2addr v7, v13

    invoke-virtual {v6, v15, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 523
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 524
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v6, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 525
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    invoke-virtual {v6, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 526
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v9, v13, v8

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v11, v13, v10

    sub-float/2addr v11, v8

    add-float v12, v13, v10

    move v8, v9

    move v9, v4

    move v10, v11

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 530
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v8, v13, v7

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v8, v9

    iget v10, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v11, v4, v10

    mul-float v12, v7, v5

    add-float/2addr v12, v13

    sub-float/2addr v12, v9

    add-float v15, v4, v10

    mul-float/2addr v7, v5

    add-float v18, v13, v7

    move v7, v4

    move v9, v11

    move v10, v12

    move v11, v15

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 535
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v7, v4

    iget v8, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v13

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v5, v9

    mul-float v10, v8, v16

    add-float/2addr v10, v13

    sub-float/2addr v10, v9

    mul-float v8, v8, v16

    add-float v12, v13, v8

    move v8, v5

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 540
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v16, v16, v5

    add-float v16, v13, v16

    iget v7, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v8, v16, v7

    iget v9, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v10, v4, v9

    mul-float v11, v5, v17

    add-float/2addr v11, v13

    sub-float/2addr v11, v7

    add-float v12, v4, v9

    mul-float v5, v5, v17

    add-float/2addr v5, v13

    move v7, v4

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 545
    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    mul-float v6, v6, v17

    add-float/2addr v6, v13

    invoke-virtual {v5, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 546
    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 549
    .local v5, "saveCount":I
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 550
    if-eqz p4, :cond_0

    .line 551
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 552
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 555
    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 557
    :goto_0
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 558
    return-void
.end method

.method private blacklist drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sweepProgress"    # F

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "viewTop":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 318
    .local v1, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 319
    .local v2, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 321
    .local v3, "viewLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 325
    .local v4, "parentView":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 326
    instance-of v5, v4, Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 340
    :cond_1
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v0, v2

    invoke-direct {v5, v3, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    .line 348
    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 349
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_2
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-direct {p0, v5, v6, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 360
    return-object v5
.end method

.method private blacklist getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 301
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 307
    :cond_0
    return-object v0
.end method

.method private blacklist initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    return-object v0
.end method

.method private blacklist initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 6
    .param p1, "deltaX"    # F
    .param p2, "itemIndex"    # I
    .param p3, "listener"    # Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 393
    move v0, p2

    .line 395
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 396
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_0

    .line 397
    return-void

    .line 401
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 405
    .local v2, "itemHeight":I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    .line 406
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 407
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    .line 408
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 410
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    .line 411
    div-int/lit8 v3, v2, 0xd

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 413
    div-int/lit8 v3, v2, 0x4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 415
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 416
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 417
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 419
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    .line 420
    new-instance v4, Lcom/samsung/android/animation/SemSweepWaveFilter$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter$1;-><init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 438
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 439
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x514

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 440
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 443
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

    .line 376
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 382
    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "adjustedVelocityX"    # F
    .param p3, "scaledTouchSlop"    # I
    .param p4, "deltaX"    # F
    .param p5, "isSweepPattern"    # Z

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 224
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    .line 225
    .local v1, "sweepProgress":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 227
    .local v2, "deltaXAbs":F
    int-to-float v3, v0

    cmpl-float v3, p4, v3

    if-lez v3, :cond_0

    .line 228
    int-to-float p4, v0

    .line 234
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-int/lit8 v4, p3, 0x6

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    if-eqz p5, :cond_1

    .line 239
    const-wide/16 v3, 0x258

    .line 240
    .local v3, "duration":J
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    .local v5, "endX":F
    goto :goto_0

    .line 242
    .end local v3    # "duration":J
    .end local v5    # "endX":F
    :cond_1
    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 246
    const-wide/16 v3, 0x258

    .line 247
    .restart local v3    # "duration":J
    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    .restart local v5    # "endX":F
    goto :goto_0

    .line 253
    .end local v3    # "duration":J
    .end local v5    # "endX":F
    :cond_2
    const/high16 v3, 0x44160000    # 600.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    int-to-long v3, v3

    .line 254
    .restart local v3    # "duration":J
    const/4 v5, 0x0

    .line 262
    .restart local v5    # "endX":F
    :goto_0
    iput v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    .line 264
    move v6, v1

    .line 265
    .local v6, "startX":F
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 266
    .local v7, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    sget-object v8, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    return-object v7
.end method

.method public blacklist doMoveAction(Landroid/view/View;FI)V
    .locals 2
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    .line 205
    .local v0, "sweepProgress":F
    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    .line 206
    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    .line 214
    return-void
.end method

.method public blacklist doRefresh()V
    .locals 1

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->removeCachedBitmap()V

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->cancelRunningAnimator()V

    .line 372
    return-void
.end method

.method public blacklist doUpActionWhenAnimationUpdate(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "sweepProgress"    # F

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 287
    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 291
    if-eqz v1, :cond_2

    .line 292
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 294
    :cond_2
    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    :cond_0
    return-void
.end method

.method public blacklist getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 2

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0
.end method

.method public blacklist getEndXOfActionUpAnimator()F
    .locals 1

    .line 275
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public blacklist initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I
    .param p4, "listener"    # Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
    .param p5, "sweepConfig"    # Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .line 388
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    .line 389
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V

    .line 390
    return-void
.end method

.method public bridge synthetic blacklist isAnimationBack()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public blacklist setForegroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;

    .line 138
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    .line 139
    return-void
.end method
