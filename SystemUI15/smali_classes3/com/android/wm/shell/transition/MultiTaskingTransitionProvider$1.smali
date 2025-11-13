.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFinished:Z

.field public final synthetic val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Ljava/lang/Runnable;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iput-object p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$finisher:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->mFinished:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->mFinished:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->mFinished:Z

    iget-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->mFinished:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->mFinished:Z

    iget-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void
.end method
