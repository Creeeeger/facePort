.class public final Lcom/android/settings/widget/DotsPageIndicator$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;

.field public final synthetic val$leftJoiningDot:I


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->val$leftJoiningDot:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->val$leftJoiningDot:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aput p1, v1, p0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
