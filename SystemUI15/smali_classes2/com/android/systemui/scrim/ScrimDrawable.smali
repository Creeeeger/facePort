.class public final Lcom/android/systemui/scrim/ScrimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:I

.field public mBottomEdgeRadius:F

.field public final mBoundsRectF:Landroid/graphics/RectF;

.field public mColorAnimation:Landroid/animation/ValueAnimator;

.field public mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

.field public mCornerRadius:F

.field public mCornerRadiusEnabled:Z

.field public mMainColor:I

.field public mMainColorTo:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mShouldUseLargeScreenSize:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mAlpha:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mShouldUseLargeScreenSize:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    const/4 v0, 0x0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    iget v1, v1, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPathOverlap:F

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    float-to-double v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move v1, v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mShouldUseLargeScreenSize:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    cmpl-float v2, v3, v1

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->right:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    add-float v7, v11, v0

    sub-float v10, v8, v0

    move v6, v8

    move v9, v11

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    add-float v6, v10, v0

    iget v9, v2, Landroid/graphics/RectF;->top:F

    add-float v11, v9, v0

    move v7, v9

    move v8, v10

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v10, v1

    add-float v9, v7, v1

    move v5, v7

    move v8, v10

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v9, v1

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v8, v1

    move v6, v8

    move v7, v9

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mAlpha:I

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getMainColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColor:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimDrawable;->updatePath()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColor(IZ)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColorTo:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColorTo:I

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColor:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/scrim/ScrimDrawable;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/systemui/scrim/ScrimDrawable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/scrim/ScrimDrawable$1;-><init>(Lcom/android/systemui/scrim/ScrimDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColor:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final updatePath()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    iget v1, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPathOverlap:F

    add-float v5, v3, v1

    iget-object v1, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    iget-object v6, p0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mCornerRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    return-void
.end method
