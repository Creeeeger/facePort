.class public final Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field public final synthetic val$dotsToHide:[I

.field public final synthetic val$initialX1:F

.field public final synthetic val$initialX2:F


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;[IFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    iput p4, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    sget v0, Lcom/android/settings/widget/DotsPageIndicator;->$r8$clinit:I

    iget-object v0, p1, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v0, p1, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$dotsToHide:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v3, v3, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v4, v3, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    const v5, 0x3727c5ac    # 1.0E-5f

    aput v5, v4, v2

    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->this$1:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX1:F

    iput v0, p1, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;->val$initialX2:F

    iput p0, p1, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
