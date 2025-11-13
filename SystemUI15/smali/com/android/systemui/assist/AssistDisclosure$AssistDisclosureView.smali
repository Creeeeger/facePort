.class public final Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public mAlpha:I

.field public final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field public final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field public final mAnimator:Landroid/animation/AnimatorSet;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public final mRadius:F

.field public final mShadowPaint:Landroid/graphics/Paint;

.field public final mShadowThickness:F

.field public final mThickness:F

.field public final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    const/16 v0, 0xde

    filled-new-array {p2, v0}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Lcom/android/app/animation/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v3, 0x12c

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p2, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;Lcom/android/systemui/assist/AssistDisclosure;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->ASSIST_DISCLOSURE_CORNER_ROUND_ENABLED:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1050398

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_1

    :goto_1
    int-to-float p1, p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07007c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/systemui/BasicRune;->ASSIST_DISCLOSURE_CORNER_ROUND_SIZE:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    :goto_2
    iput p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v2

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    int-to-float v1, v1

    sub-float v2, v1, p0

    int-to-float v0, v0

    const/4 v3, 0x0

    sub-float/2addr v3, p3

    sub-float v6, v2, p3

    add-float v10, v0, p3

    add-float v8, v1, p3

    move-object v4, p1

    move v5, v3

    move v7, v10

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v1, p0, p3

    add-float/2addr v2, p3

    move-object v4, p1

    move v5, v3

    move v6, v3

    move v7, v1

    move v8, v2

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-float/2addr v0, p0

    sub-float v5, v0, p3

    move-object v4, p1

    move v6, v3

    move v7, v10

    move v8, v2

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-float v5, p0, p3

    add-float v7, v0, p3

    move-object v4, p1

    move v6, v3

    move v8, v1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_DISCLOSURE_CORNER_ROUND_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v8, v3, v4

    mul-float v9, v3, v4

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float v5, v0, v5

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v6, v3, v4

    sub-float v6, v0, v6

    mul-float v9, v3, v4

    const/high16 v10, -0x3d4c0000    # -90.0f

    move v8, v0

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v6, v3, v4

    sub-float v6, v0, v6

    mul-float/2addr v3, v4

    sub-float v7, v2, v3

    const/4 v10, 0x0

    move v9, v2

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v3, v0, v4

    sub-float v7, v2, v3

    mul-float v8, v0, v4

    const/4 v6, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :goto_0
    return-void
.end method
