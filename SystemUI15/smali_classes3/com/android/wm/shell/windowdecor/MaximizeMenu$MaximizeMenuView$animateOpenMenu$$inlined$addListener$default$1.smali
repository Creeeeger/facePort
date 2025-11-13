.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeButton:Landroid/widget/Button;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

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
