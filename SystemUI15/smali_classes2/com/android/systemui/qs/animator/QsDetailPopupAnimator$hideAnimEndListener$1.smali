.class public final Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->clearAnimationState()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p3, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    if-eqz p3, :cond_2

    sput-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iput-boolean p2, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->isAnimating:Z

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->buttonContainer:Landroid/view/ViewGroup;

    const/high16 p2, 0x20000

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->qsPanel:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideDetailSpringAnimator:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    return-void
.end method
