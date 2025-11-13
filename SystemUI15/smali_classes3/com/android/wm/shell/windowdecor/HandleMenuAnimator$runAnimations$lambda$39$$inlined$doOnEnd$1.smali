.class public final Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $after$inlined:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;->$after$inlined:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;->$after$inlined:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runningAnimation:Landroid/animation/AnimatorSet;

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
