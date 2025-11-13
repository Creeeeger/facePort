.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapWindowText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
