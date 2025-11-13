.class public final Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCanceled:Z

.field public final mEndValue:F

.field public final mFinalVisibility:I

.field public mPausedValue:F

.field public final mProp:Landroid/util/Property;

.field public final mTerminalValue:F

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/Property;FFI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFI)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    iput-object p2, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iput p3, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    iput p4, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mEndValue:F

    iput p5, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    const v2, 0x7f0a0612

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget p0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mPausedValue:F

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mEndValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget p0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mPausedValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
