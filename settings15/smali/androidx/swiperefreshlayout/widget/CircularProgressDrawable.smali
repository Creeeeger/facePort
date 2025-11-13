.class public final Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SINE_OUT_60:Landroid/view/animation/Interpolator;


# instance fields
.field public mAnimationEndCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

.field public final mAnimator:Landroid/animation/Animator;

.field public final mDotAnimation:Landroid/graphics/drawable/Drawable;

.field public final mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

.field public final mRotateAnimtior:Landroid/animation/Animator;

.field public mRotation:F

.field public final mScreenDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    invoke-direct {v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;-><init>()V

    iput-object v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04068f

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_0

    const v5, 0x7f1504a9

    :cond_0
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget-object v5, Landroidx/swiperefreshlayout/R$styleable;->SwipeRefreshLayoutProgress:[I

    invoke-virtual {v6, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060952

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f060953

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    filled-new-array {v5, p1}, [I

    move-result-object p1

    iput-object p1, v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f080c6b

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mScreenDensity:F

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-object p1, v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0x5a

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;

    invoke-direct {v3, p0, v4, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;

    invoke-direct {v0, p0, v4, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$3;

    invoke-direct {v0, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$3;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;

    invoke-direct {v0, p0, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotateAnimtior:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mCenterRadius:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    sub-float/2addr v2, v0

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    add-float/2addr v3, v4

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    sub-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    add-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mIsRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    iget p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    iput p1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setScale(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    iget v1, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iput v0, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr p1, v1

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mScreenDensity:F

    mul-float/2addr p1, v2

    mul-float/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotateAnimtior:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotateAnimtior:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 v2, 0x0

    iput v2, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    iput-boolean v1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mIsRunning:Z

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotateAnimtior:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
