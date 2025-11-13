.class public final Landroidx/appcompat/animation/SeslRecoilAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sPressInterpolator:Landroid/animation/TimeInterpolator;

.field public static sReleaseInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field public final mAnimator:Landroid/animation/ValueAnimator;

.field public final mContext:Landroid/content/Context;

.field public mIsPressed:Z

.field public mIsScaleOnlyChildren:Z

.field public mScaleRatio:F

.field public mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsScaleOnlyChildren:Z

    iput-boolean v1, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsPressed:Z

    iput-object p2, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mContext:Landroid/content/Context;

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsScaleOnlyChildren:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsScaleOnlyChildren:Z

    :goto_0
    new-array p2, v0, [F

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/appcompat/animation/SeslRecoilAnimator;->sPressInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_1

    const v0, 0x7f01009e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/animation/SeslRecoilAnimator;->sPressInterpolator:Landroid/animation/TimeInterpolator;

    :cond_1
    sget-object v0, Landroidx/appcompat/animation/SeslRecoilAnimator;->sReleaseInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_2

    const v0, 0x7f01009f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    sput-object p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->sReleaseInterpolator:Landroid/animation/TimeInterpolator;

    :cond_2
    new-instance p1, Landroidx/appcompat/animation/SeslRecoilAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/appcompat/animation/SeslRecoilAnimator$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/animation/SeslRecoilAnimator;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroidx/appcompat/animation/SeslRecoilAnimator$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/animation/SeslRecoilAnimator$1;-><init>(Landroidx/appcompat/animation/SeslRecoilAnimator;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final animateValue(F)V
    .locals 8

    iget-boolean v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsScaleOnlyChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget-object v6, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    neg-float v5, v4

    neg-float v7, v6

    invoke-virtual {v3, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsPressed:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

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
