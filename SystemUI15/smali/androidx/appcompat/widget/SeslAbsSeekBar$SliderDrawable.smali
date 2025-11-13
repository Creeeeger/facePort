.class public final Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:I

.field public mColor:I

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field public mIsStateChanged:Z

.field public final mIsVertical:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPressedAnimator:Landroid/animation/ValueAnimator;

.field public mRadius:F

.field public final mReleasedAnimator:Landroid/animation/ValueAnimator;

.field public final mSliderMaxWidth:F

.field public final mSliderMinWidth:F

.field public final mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    const/16 v3, 0xff

    iput v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    new-instance v3, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;Landroidx/appcompat/widget/SeslAbsSeekBar$1;)V

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    iput p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, p2, p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    iput-boolean p5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    new-array p1, v1, [F

    aput p2, p1, v2

    aput p3, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p4, 0xfa

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$1;

    invoke-direct {v4, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$1;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v1, [F

    aput p3, p1, v2

    aput p2, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$2;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    sub-float v6, v1, v4

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v2

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v2

    iget-object v8, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v8, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    sub-float v6, v3, v8

    div-float v7, v1, v2

    iget-object v9, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

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
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    if-eq v5, v4, :cond_0

    iput v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    iget-object v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    array-length v4, p1

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_3

    aget v8, p1, v5

    const v9, 0x101009e

    if-ne v8, v9, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    const v9, 0x10100a7

    if-ne v8, v9, :cond_2

    move v7, v2

    :cond_2
    :goto_1
    add-int/2addr v5, v2

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    if-eq v4, p1, :cond_a

    if-eqz p1, :cond_7

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    iget v6, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    new-array v0, v0, [F

    aput v5, v0, v1

    aput v6, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    iget v6, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    new-array v0, v0, [F

    aput v5, v0, v1

    aput v6, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    :cond_a
    return v3
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
