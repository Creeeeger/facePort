.class public final Lcom/google/android/material/motion/MaterialSideContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final maxScaleXDistanceGrow:F

.field public final maxScaleXDistanceShrink:F

.field public final maxScaleYDistance:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07077f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    const v0, 0x7f07077e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    const v0, 0x7f070780

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    return-void
.end method


# virtual methods
.method public updateBackProgress(FZI)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->progressInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-static {p3, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    const/4 v1, 0x3

    and-int/2addr p3, v1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-ne p2, p3, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v4, v1

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-lez v6, :cond_8

    int-to-float v3, v3

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_2

    goto/16 :goto_7

    :cond_2
    iget v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    div-float/2addr v6, v4

    iget v7, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    div-float/2addr v7, v4

    iget v8, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    div-float/2addr v8, v3

    iget-object v3, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    if-eqz p3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    neg-float v7, v6

    :goto_2
    invoke-static {v5, v7, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v6, v3, v4

    iget-object v7, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v5, v8, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    sub-float p1, v4, p1

    iget-object v7, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    instance-of v7, p0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    check-cast p0, Landroid/view/ViewGroup;

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz p3, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    int-to-float v8, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    :goto_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    if-eqz p2, :cond_6

    sub-float v8, v4, v3

    goto :goto_5

    :cond_6
    move v8, v4

    :goto_5
    cmpl-float v9, p1, v5

    if-eqz v9, :cond_7

    div-float v9, v6, p1

    mul-float/2addr v9, v8

    goto :goto_6

    :cond_7
    move v9, v4

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleY(F)V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_8
    :goto_7
    return-void
.end method
