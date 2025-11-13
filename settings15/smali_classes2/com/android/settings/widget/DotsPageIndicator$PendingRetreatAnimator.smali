.class public final Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0, p5}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V

    iget-wide v3, p1, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p5, p1, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-le p3, p2, :cond_0

    iget-object p5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget p5, p5, p2

    iget v3, p1, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    invoke-static {p5, v3}, Ljava/lang/Math;->min(FF)F

    move-result p5

    iget v3, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    :goto_0
    sub-float/2addr p5, v3

    goto :goto_1

    :cond_0
    iget-object p5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget p5, p5, p3

    iget v3, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    goto :goto_0

    :goto_1
    if-le p3, p2, :cond_1

    iget-object v3, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v3, v3, p3

    iget v4, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    :goto_2
    sub-float/2addr v3, v4

    goto :goto_3

    :cond_1
    iget-object v3, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v3, v3, p3

    iget v4, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    goto :goto_2

    :goto_3
    if-le p3, p2, :cond_2

    iget-object v4, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v4, v4, p3

    iget v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    :goto_4
    add-float/2addr v4, v5

    goto :goto_5

    :cond_2
    iget-object v4, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v4, v4, p2

    iget v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    goto :goto_4

    :goto_5
    if-le p3, p2, :cond_3

    iget-object v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget p3, v5, p3

    iget v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    :goto_6
    add-float/2addr p3, v5

    goto :goto_7

    :cond_3
    iget-object v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget p3, v5, p3

    iget v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    goto :goto_6

    :goto_7
    new-array v5, p4, [Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    iput-object v5, p1, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    new-array v5, p4, [I

    cmpl-float v6, p5, v3

    if-eqz v6, :cond_5

    new-array p3, v0, [F

    aput p5, p3, v1

    aput v3, p3, v2

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    move p3, v1

    :goto_8
    if-ge p3, p4, :cond_4

    iget-object v0, p1, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    new-instance v3, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    add-int v6, p2, p3

    new-instance v7, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget-object v8, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v8, v8, v6

    invoke-direct {v7, v8, v2}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(FI)V

    invoke-direct {v3, p1, v6, v7}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V

    aput-object v3, v0, p3

    aput v6, v5, p3

    add-int/2addr p3, v2

    goto :goto_8

    :cond_4
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;I)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_a

    :cond_5
    new-array v0, v0, [F

    aput v4, v0, v1

    aput p3, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    move p3, v1

    :goto_9
    if-ge p3, p4, :cond_6

    iget-object v0, p1, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    new-instance v3, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    sub-int v6, p2, p3

    new-instance v7, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget-object v8, p1, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v8, v8, v6

    invoke-direct {v7, v8, v1}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(FI)V

    invoke-direct {v3, p1, v6, v7}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V

    aput-object v3, v0, p3

    aput v6, v5, p3

    add-int/2addr p3, v2

    goto :goto_9

    :cond_6
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;

    invoke-direct {p1, p0, v2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;I)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_a
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;

    invoke-direct {p1, p0, v5, p5, v4}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;[IFF)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
