.class public final Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $this_apply:Landroid/animation/ObjectAnimator;

.field public final synthetic this$0:Lcom/google/android/material/appbar/StackViewGroup;


# direct methods
.method public constructor <init>(Landroid/animation/ObjectAnimator;Lcom/google/android/material/appbar/StackViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;->$this_apply:Landroid/animation/ObjectAnimator;

    iput-object p2, p0, Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;->this$0:Lcom/google/android/material/appbar/StackViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;->$this_apply:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;->this$0:Lcom/google/android/material/appbar/StackViewGroup;

    iget-object p0, p0, Lcom/google/android/material/appbar/StackViewGroup;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
