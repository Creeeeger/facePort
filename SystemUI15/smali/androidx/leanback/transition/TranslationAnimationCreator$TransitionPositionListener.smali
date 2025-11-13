.class public final Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public final mMovingView:Landroid/view/View;

.field public mPausedX:F

.field public mPausedY:F

.field public final mStartX:I

.field public final mStartY:I

.field public final mTerminalX:F

.field public final mTerminalY:F

.field public mTransitionPosition:[I

.field public final mViewInHierarchy:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iput-object p2, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    iput p5, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    iput p6, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    const p1, 0x7f0a0d7c

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    :cond_0
    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const v0, 0x7f0a0d7c

    iget-object p0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p0, p0, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
