.class public final Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$animator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$animator$1$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$animator$1$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$animator$1$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
