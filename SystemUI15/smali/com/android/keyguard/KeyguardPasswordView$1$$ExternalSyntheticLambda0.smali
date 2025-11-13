.class public final synthetic Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPasswordView$1;

.field public final synthetic f$1:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic f$2:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPasswordView$1;Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPasswordView$1;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowInsetsAnimationController;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;->f$2:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPasswordView$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowInsetsAnimationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$1$$ExternalSyntheticLambda0;->f$2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Insets;->add(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    iget-object v4, v0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearAnimationListener:Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;

    if-eqz v4, :cond_1

    neg-int v3, v3

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    invoke-interface {v1, v2, p1, p0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method
