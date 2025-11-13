.class public final Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final applyColor:Lkotlin/jvm/functions/Function1;

.field public final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public currentColor:I

.field public final defaultColor:I

.field public final extractColor:Lkotlin/jvm/functions/Function1;

.field public sourceColor:I

.field public targetColor:I

.field public final valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->defaultColor:I

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->extractColor:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->applyColor:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->buildAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    iput p1, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->sourceColor:I

    iput p1, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    iput p1, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->targetColor:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v1, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->sourceColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->targetColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->applyColor:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
