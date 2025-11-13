.class public final Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$animationEndTag:I

.field public final synthetic val$animationStartTag:I

.field public final synthetic val$animatorTag:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationStartTag:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationEndTag:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animatorTag:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationStartTag:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$animationEndTag:I

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "PropertyAnimator"

    const-string p1, "Unexpected Animator set during onAnimationEnd. Not cleaning up."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
