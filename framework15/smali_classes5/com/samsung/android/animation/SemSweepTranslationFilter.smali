.class public Lcom/samsung/android/animation/SemSweepTranslationFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepTranslationFilter.java"


# static fields
.field private static final blacklist BG_ALPHA:I = 0xe1

.field private static final blacklist COEFFICIENT_FOR_VELOCITY_ADJUSTMENT:I = 0x17

.field private static final blacklist DEBUGGABLE:Z = false

.field private static final blacklist DEBUGGABLE_LOW:Z = true

.field private static final blacklist DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final blacklist DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final blacklist SWEEP_TEXT_PADDING_DP:I = 0x10

.field private static final blacklist SWIPE_DURATION:I = 0x258

.field private static final blacklist TAG:Ljava/lang/String; = "SemSweepTranslationFilter"

.field private static blacklist VELOCITY_UNITS:I

.field private static blacklist sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist SWEEP_TEXT_PADDING_PX:I

.field private final blacklist leftColor:I

.field private blacklist mBgLeftToRight:Landroid/graphics/Paint;

.field private blacklist mBgRightToLeft:Landroid/graphics/Paint;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private blacklist mEndXOfActionUpAnimator:F

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mSweepBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

.field private blacklist mSweepDirection:I

.field private blacklist mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private blacklist mSweepRect:Landroid/graphics/Rect;

.field private blacklist mSweepRectFullyDrawn:Z

.field private blacklist mTextPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaintSize:I

.field private blacklist mViewForeground:Landroid/view/View;

.field private blacklist mViewTop:I

.field private final blacklist rightColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->VELOCITY_UNITS:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    const-string v0, "#6ebd52"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    const-string v0, "#56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->convertDipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->SWEEP_TEXT_PADDING_PX:I

    return-void
.end method

.method private static blacklist convertDipToPixels(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private blacklist drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p8, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p8, p5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p6, p5}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private blacklist drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;
    .locals 28

    move-object/from16 v12, p0

    move/from16 v13, p2

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_2

    instance-of v2, v10, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    instance-of v2, v10, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v0, v2, v3

    move v9, v0

    goto :goto_0

    :cond_2
    move v9, v0

    :goto_0
    iput v9, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    new-instance v0, Landroid/graphics/Rect;

    add-int v2, v9, v15

    invoke-direct {v0, v11, v9, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v6, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v5, v0, v2

    const/4 v0, 0x0

    cmpl-float v2, p3, v0

    const-string v3, "SemSweepTranslationFilter"

    if-lez v2, :cond_6

    iput v7, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v4, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    const-string/jumbo v0, "mSweepConfiguration.drawableLeftToRight is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v0, v13

    invoke-direct {v2, v7, v7, v0, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    iget-object v7, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v7, v7, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int v7, v17, v7

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    sub-int v0, v15, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorLeftToRight:I

    if-eqz v0, :cond_5

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorLeftToRight:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v4, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    move-object/from16 v20, v0

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    const/16 v21, 0xff

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v23, v1

    move-object v1, v8

    move/from16 v24, v3

    move-object/from16 v3, v23

    move-object/from16 v18, v19

    const/16 v23, 0x0

    move/from16 v19, v4

    move/from16 v4, v21

    move/from16 v21, v11

    move v11, v5

    move-object v5, v7

    move/from16 v25, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v0, v13

    const/4 v8, 0x0

    invoke-direct {v5, v0, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    float-to-int v7, v11

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    const/16 v22, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move/from16 v23, v9

    move-object v9, v0

    move-object/from16 v26, v10

    move v10, v1

    move v0, v11

    move-object/from16 v11, v22

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    move v1, v0

    move/from16 v0, v25

    goto/16 :goto_1

    :cond_6
    move/from16 v25, v6

    move-object/from16 v19, v8

    move/from16 v23, v9

    move-object/from16 v26, v10

    move/from16 v21, v11

    move v11, v5

    move v8, v7

    cmpg-float v0, p3, v0

    if-gez v0, :cond_9

    const/4 v0, 0x1

    iput v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v10, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_7

    const-string/jumbo v0, "mSweepConfiguration.drawableRightToLeft is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v9

    new-instance v2, Landroid/graphics/Rect;

    move/from16 v7, v25

    float-to-int v0, v7

    sub-int v0, v14, v0

    invoke-direct {v2, v0, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, v14, v17

    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr v1, v3

    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int v3, v14, v3

    invoke-direct {v0, v1, v8, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v0

    sub-int v0, v15, v9

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v0, :cond_8

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorRightToLeft:I

    if-eqz v0, :cond_8

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorRightToLeft:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v5, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    const/16 v18, 0xff

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    move/from16 v22, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move-object v5, v6

    move-object/from16 v24, v6

    move-object/from16 v6, v18

    move/from16 v27, v7

    move/from16 v7, v22

    move/from16 v18, v9

    move v9, v8

    move-object/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v27

    float-to-int v1, v0

    sub-int v1, v14, v1

    invoke-direct {v5, v9, v9, v1, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    float-to-int v7, v11

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v9, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    const/16 v20, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    move-object/from16 v8, v24

    move-object/from16 v22, v10

    move v10, v1

    move v1, v11

    move-object/from16 v11, v20

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    move v1, v11

    move/from16 v0, v25

    :goto_1
    return-object v19
.end method

.method private blacklist drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, p3, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p4, :cond_1

    iget v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, p4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v9, v9, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    goto :goto_0

    :cond_0
    iget v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    if-nez v8, :cond_1

    iget v8, p4, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v9, v9, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int/2addr v8, v9

    int-to-float v6, v8

    :cond_1
    :goto_0
    iget-boolean v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_2
    int-to-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float v9, v5, v9

    add-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v8, v9

    iget-boolean v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    int-to-float v7, v7

    add-float/2addr v8, v7

    iput-boolean v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    :cond_3
    invoke-virtual {p1, p3, v6, v8, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist drawTextToCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, p3, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    int-to-float v5, v0

    div-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v5, v4

    invoke-virtual {p1, p3, v3, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method private blacklist initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public blacklist createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 13

    move-object v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    int-to-float v1, v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemSweepTranslationFilter : createActionUpAnimator() : Math.abs(adjustedVelocityX) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemSweepTranslationFilter"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemSweepTranslationFilter : createActionUpAnimator() : scaledTouchSlop * 23 = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v6, p3, 0x17

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-int/lit8 v6, p3, 0x17

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x44160000    # 600.0f

    const/4 v8, 0x1

    if-lez v4, :cond_2

    if-eqz p5, :cond_2

    const-string v4, "SemSweepTranslationFilter : createActionUpAnimator() : kick in animation with given velocity, point #1"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v2, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v9, v2

    div-float/2addr v5, v9

    sub-float/2addr v6, v5

    mul-float/2addr v6, v7

    float-to-int v5, v6

    int-to-long v5, v5

    const-wide/16 v9, 0x258

    cmp-long v7, v5, v9

    if-lez v7, :cond_1

    const-wide/16 v5, 0x258

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v7

    int-to-float v9, v2

    mul-float/2addr v7, v9

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    int-to-float v4, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    const-string v4, "SemSweepTranslationFilter : createActionUpAnimator() : Greater than a half of the width, point #2"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    sub-float/2addr v6, v4

    mul-float/2addr v6, v7

    float-to-int v4, v6

    int-to-long v5, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    int-to-float v7, v2

    mul-float/2addr v7, v4

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "SemSweepTranslationFilter : createActionUpAnimator() : Not far enough - animate it back, point #3"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v5, v4

    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iput-boolean v8, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mIsAnimationBack:Z

    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gez v9, :cond_4

    const-wide/16 v5, 0x258

    :cond_4
    iput v7, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v8, [F

    const/4 v11, 0x0

    aput v4, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v8, [F

    aput v7, v12, v11

    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v9, v12, v11

    aput-object v10, v12, v8

    move-object v8, p1

    invoke-static {p1, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v11
.end method

.method public blacklist doMoveAction(Landroid/view/View;FI)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v3, p3, v0, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public blacklist doRefresh()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mIsAnimationBack:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->removeCachedBitmap()V

    return-void
.end method

.method public blacklist doUpActionWhenAnimationUpdate(IF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, p2, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v2, v1, p2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public blacklist getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

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

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public blacklist getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSweepBitmapDrawable : mDrawSweepBitmapDrawable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSweepTranslationFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public blacklist initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0

    iput-object p4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    return-void
.end method

.method public bridge synthetic blacklist isAnimationBack()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public blacklist removeCachedBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public blacklist setForegroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    return-void
.end method
