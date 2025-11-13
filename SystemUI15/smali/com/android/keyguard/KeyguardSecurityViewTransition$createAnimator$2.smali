.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $endRect:Landroid/graphics/Rect;

.field public final synthetic $fadeInInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $fadeOutInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $initialAlpha:F

.field public final synthetic $positionInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $startRect:Landroid/graphics/Rect;

.field public final synthetic $totalTranslation:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;Lkotlin/jvm/internal/Ref$IntRef;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Interpolator;Landroid/view/View;FLandroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$positionInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$totalTranslation:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeOutInterpolator:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    iput p7, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$initialAlpha:F

    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$positionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$totalTranslation:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_1

    neg-int v2, v2

    neg-int v3, v3

    :cond_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v5, v4, v4, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$initialAlpha:F

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v4, v5, v1, v5, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    :goto_1
    return-void
.end method
