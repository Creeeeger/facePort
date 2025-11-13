.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iget v0, p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$moveOut$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    return-void
.end method
