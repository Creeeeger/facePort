.class public interface abstract Landroidx/transition/Transition$TransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract onTransitionCancel(Landroidx/transition/Transition;)V
.end method

.method public abstract onTransitionEnd(Landroidx/transition/Transition;)V
.end method

.method public abstract onTransitionPause()V
.end method

.method public abstract onTransitionResume()V
.end method

.method public abstract onTransitionStart(Landroidx/transition/Transition;)V
.end method

.method public onTransitionStart$1(Landroidx/transition/Transition;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    return-void
.end method
