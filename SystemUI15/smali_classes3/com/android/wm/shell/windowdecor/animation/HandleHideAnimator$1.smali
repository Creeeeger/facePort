.class public final Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$1;->this$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$1;->this$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHideRunnable:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$1;->this$0:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    return-void
.end method
