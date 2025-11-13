.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;
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

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->menuPadding:I

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->menuHeight:I

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int p1, v0, p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
