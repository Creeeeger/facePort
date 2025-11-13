.class public final Lcom/android/systemui/animation/TextAnimator$animator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $numberOfAnimationSteps:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/systemui/animation/TextAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TextAnimator;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator$animator$1$1;->this$0:Lcom/android/systemui/animation/TextAnimator;

    iput-object p2, p0, Lcom/android/systemui/animation/TextAnimator$animator$1$1;->$numberOfAnimationSteps:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/TextAnimator$animator$1$1;->this$0:Lcom/android/systemui/animation/TextAnimator;

    iget-object v1, v0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/animation/TextAnimator$animator$1$1;->$numberOfAnimationSteps:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    :cond_0
    iput p1, v1, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    iget-object p0, p0, Lcom/android/systemui/animation/TextAnimator$animator$1$1;->this$0:Lcom/android/systemui/animation/TextAnimator;

    iget-object p0, p0, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
