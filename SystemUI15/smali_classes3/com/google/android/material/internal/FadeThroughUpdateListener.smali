.class public final Lcom/google/android/material/internal/FadeThroughUpdateListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final alphas:[F

.field public final fadeInView:Landroid/view/View;

.field public final fadeOutView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->fadeOutView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->fadeInView:Landroid/view/View;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->alphas:[F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->alphas:[F

    invoke-static {p1, v0}, Lcom/google/android/material/internal/FadeThroughUtils;->calculateFadeOutAndInAlphas(F[F)V

    iget-object p1, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->fadeOutView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->alphas:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->fadeInView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/internal/FadeThroughUpdateListener;->alphas:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
