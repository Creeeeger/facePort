.class public final Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MaximizeButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

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

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView$startHoverAnimation$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->onHoverAnimationFinishedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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
