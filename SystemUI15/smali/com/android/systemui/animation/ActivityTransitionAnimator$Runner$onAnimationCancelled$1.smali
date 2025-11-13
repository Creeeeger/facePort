.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationCancelled$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationCancelled$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationCancelled$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    const-string v1, "ActivityTransitionAnimator"

    if-nez v0, :cond_0

    const-string v0, "onAnimationCancelled called after completion"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationCancelled$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onLongTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timedOut:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Remote animation was cancelled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->cancelled:Z

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->animation:Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;->$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    sget-boolean v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz v0, :cond_4

    const-string v0, "Calling controller.onTransitionAnimationCancelled() [remote animation cancelled]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v1, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationCancelled()V

    :cond_5
    :goto_0
    return-void
.end method
