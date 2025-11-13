.class public abstract Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final SINE_IN_33:Landroid/view/animation/Interpolator;

.field public final SINE_OUT_33:Landroid/view/animation/Interpolator;

.field public final alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field public final keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field public final scalePathInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f547ae1    # 0.83f

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_IN_33:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {p1, v0, v4, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->scalePathInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f2e147b    # 0.68f

    invoke-direct {p1, v1, v2, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public final isKeyguardState()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setViewAlphaAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p3, v0, v3

    invoke-static {p2, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object p2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public final setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v4, p3, v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    new-array v7, v0, [F

    aput v6, v7, v2

    aput p3, v7, v1

    invoke-static {p2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v6

    new-array v7, v0, [F

    aput v6, v7, v2

    aput p3, v7, v1

    invoke-static {p2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, v4, v2

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    cmpg-float p3, p4, v3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v2

    aput p4, v0, v1

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz p4, :cond_3

    invoke-virtual {p4, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimation$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimation$2;-><init>(Lcom/android/systemui/keyguard/animator/ViewAnimationController;)V

    invoke-virtual {p3, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    new-array p0, v1, [Landroid/animation/Animator;

    aput-object p3, p0, v2

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    return-void
.end method

.method public final setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->scalePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v0, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    aput p3, v0, v4

    invoke-static {p2, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->scalePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aput-object p2, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method
