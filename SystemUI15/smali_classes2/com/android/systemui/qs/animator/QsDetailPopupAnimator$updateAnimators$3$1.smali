.class public final Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $distance:F

.field public final synthetic $isTilePopupAnim:Z

.field public final synthetic $this_apply:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;


# direct methods
.method public constructor <init>(FLcom/android/systemui/qs/animator/QsDetailPopupAnimator;ZLcom/android/internal/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$distance:F

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iput-boolean p3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$isTilePopupAnim:Z

    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$this_apply:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 6

    iget p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$distance:F

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "QsPopupAnimator"

    const-string p2, "animatedValue for hideDetailSpringAnimator is NaN, so sets as 1f"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p2, p3

    goto :goto_1

    :cond_0
    cmpg-float p1, p2, v0

    if-gez p1, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    cmpl-float p1, p2, p3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object v1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$isTilePopupAnim:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v3, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->xDiff:F

    mul-float/2addr v3, p2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v3, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->yDiff:F

    mul-float/2addr v3, p2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    div-float v3, p2, v2

    iget v4, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLeftOnStart:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->widthDiff:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLeft(I)V

    iget v4, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorRightOnStart:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->widthDiff:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v1, v4}, Landroid/view/View;->setRight(I)V

    iget v4, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorTopOnStart:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->heightDiff:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTop(I)V

    iget v4, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorBottomOnStart:I

    int-to-float v4, v4

    iget p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->heightDiff:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBottom(I)V

    :cond_4
    mul-float p1, p2, v2

    sub-float p1, p3, p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object v3, v3, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_5
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, p2

    sub-float/2addr p3, v1

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object v1, v1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorView:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object v3, v3, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->panelViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hashCode()I

    move-result v5

    if-eq v1, v5, :cond_7

    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detail:Lcom/android/systemui/qs/SecQSDetail;

    const/4 p3, 0x1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$isTilePopupAnim:Z

    if-eqz v1, :cond_a

    int-to-float v1, p3

    sub-float v2, v1, p2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v0

    goto :goto_6

    :cond_a
    int-to-float v1, p3

    sub-float v3, v1, p2

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_7
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget v0, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->xDiff:F

    neg-float v0, v0

    int-to-float p3, p3

    sub-float p2, p3, p2

    mul-float/2addr v0, p2

    iget v1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->yDiff:F

    neg-float v1, v1

    mul-float/2addr v1, p2

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetView:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_b
    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    sub-float/2addr p3, p1

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->targetChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget v0, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->textXDiff:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->textYDiff:F

    neg-float v1, v1

    mul-float/2addr v1, p2

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailHeaderText:Landroid/view/View;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->detailSummary:Landroid/view/View;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$this_apply:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p2, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->$this_apply:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$updateAnimators$3$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->hideAnimEndListener:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$hideAnimEndListener$1;

    invoke-virtual {p1, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method
