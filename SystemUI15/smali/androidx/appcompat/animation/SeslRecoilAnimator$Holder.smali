.class public final Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimators:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final setPress(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/animation/SeslRecoilAnimator;

    iget-object v4, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    if-ne v4, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/animation/SeslRecoilAnimator;

    invoke-virtual {v3}, Landroidx/appcompat/animation/SeslRecoilAnimator;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    iput-object p1, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    goto :goto_0

    :cond_3
    new-instance v3, Landroidx/appcompat/animation/SeslRecoilAnimator;

    iget-object v2, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v2}, Landroidx/appcompat/animation/SeslRecoilAnimator;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iget-object p0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mTarget:Landroid/view/View;

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iput-boolean v1, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsScaleOnlyChildren:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsScaleOnlyChildren:Z

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr p1, v2

    sub-float p1, p0, p1

    div-float/2addr p1, p0

    iput p1, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mScaleRatio:F

    iget-boolean p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsPressed:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v1, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsPressed:Z

    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_7
    iget v2, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mScaleRatio:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p0, v4, v0

    aput v2, v4, v1

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->sPressInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, v3, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final setRelease()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
