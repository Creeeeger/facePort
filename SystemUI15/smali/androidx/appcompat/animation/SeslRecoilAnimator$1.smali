.class public final Landroidx/appcompat/animation/SeslRecoilAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/animation/SeslRecoilAnimator;


# direct methods
.method public constructor <init>(Landroidx/appcompat/animation/SeslRecoilAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$1;->this$0:Landroidx/appcompat/animation/SeslRecoilAnimator;

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

    iget-object p0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$1;->this$0:Landroidx/appcompat/animation/SeslRecoilAnimator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/animation/SeslRecoilAnimator;->animateValue(F)V

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
