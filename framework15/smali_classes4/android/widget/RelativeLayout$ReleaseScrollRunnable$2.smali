.class Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mLastOffset:I

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mLastOffset:I

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-object v1, p1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mLastOffset:I

    :cond_0
    return-void
.end method
