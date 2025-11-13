.class public final Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:I

.field public mColor:I

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field public mIsStateChanged:Z

.field public final mIsVertical:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPaintInner:Landroid/graphics/Paint;

.field public final mRadius:I

.field public mRadiusForAni:I

.field public final mStrokeWidth:I

.field public final mThumbPressed:Landroid/animation/ValueAnimator;

.field public final mThumbReleased:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V
    .locals 7

    const/4 v0, 0x2

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaintInner:Landroid/graphics/Paint;

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    const/16 v5, 0xff

    iput v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    iput-boolean v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0712f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mStrokeWidth:I

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    iput-object p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060867

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    int-to-float p1, p2

    const/4 p3, 0x0

    new-array p4, v0, [F

    aput p1, p4, v4

    aput p3, p4, v2

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x64

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance p4, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$1;

    invoke-direct {p4, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$1;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float p1, p2

    new-array p2, v0, [F

    aput p3, p2, v4

    aput p1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    sget-object p2, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaintInner:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    iget v3, v1, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    iget v3, v1, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mStrokeWidth:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    iget v3, v2, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    invoke-static {v2}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    iget v3, v2, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    invoke-static {v2}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mStrokeWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaintInner:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x3

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChange([I)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget v7, p1, v3

    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    move v5, v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v6

    :cond_4
    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    if-eq p1, v2, :cond_a

    if-eqz v2, :cond_7

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    :cond_a
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
