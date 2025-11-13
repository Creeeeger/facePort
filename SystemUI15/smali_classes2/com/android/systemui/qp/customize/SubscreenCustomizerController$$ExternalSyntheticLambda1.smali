.class public final synthetic Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;->f$1:F

    iget p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda1;->f$2:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
