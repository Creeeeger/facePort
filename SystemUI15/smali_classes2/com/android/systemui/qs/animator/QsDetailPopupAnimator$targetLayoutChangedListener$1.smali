.class public final Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-boolean p2, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->isAnimating:Z

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->springAnimList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$targetLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->transitionDetail(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method
