.class public interface abstract Landroidx/core/animation/Animator$AnimatorListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract onAnimationCancel(Landroidx/core/animation/Animator;)V
.end method

.method public abstract onAnimationEnd(Landroidx/core/animation/Animator;)V
.end method

.method public onAnimationEnd(Landroidx/core/animation/Animator;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;)V

    return-void
.end method

.method public abstract onAnimationRepeat(Landroidx/core/animation/Animator;)V
.end method

.method public abstract onAnimationStart(Landroidx/core/animation/Animator;)V
.end method

.method public onAnimationStart(Landroidx/core/animation/Animator;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationStart(Landroidx/core/animation/Animator;)V

    return-void
.end method
