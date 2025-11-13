.class public final synthetic Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/blur/SecQpBlurController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/blur/SecQpBlurController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/blur/SecQpBlurController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mAnimatedFraction:F

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
