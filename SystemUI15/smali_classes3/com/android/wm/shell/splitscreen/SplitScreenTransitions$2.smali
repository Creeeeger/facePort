.class public final Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFinished:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final synthetic val$animator:Landroid/animation/ValueAnimator;

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$finisher:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$animator:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->mFinished:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->onAnimationFinished()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->onAnimationFinished()V

    return-void
.end method

.method public final onAnimationFinished()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->mFinished:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method
