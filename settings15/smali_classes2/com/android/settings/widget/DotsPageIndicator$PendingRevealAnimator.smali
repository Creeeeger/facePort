.class public final Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final dot:I

.field public final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0, p3}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->dot:I

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-wide p2, p1, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {p0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3727c5ac    # 1.0E-5f
        0x3f800000    # 1.0f
    .end array-data
.end method
