.class public final synthetic Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPINView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPINView;

    sget v0, Lcom/android/keyguard/KeyguardPINView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mBouncerMessageArea:Landroid/view/View;

    iget v3, p0, Lcom/android/keyguard/KeyguardPINView;->mYTrans:I

    int-to-float v3, v3

    mul-float v4, v3, v0

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mBouncerMessageArea:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    int-to-float v8, v3

    const v9, 0x3d99999a    # 0.075f

    mul-float/2addr v8, v9

    sub-float v8, p1, v8

    iget-object v10, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    array-length v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v10

    div-float/2addr v8, v10

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    move-object v9, v1

    check-cast v9, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget v8, p0, Lcom/android/keyguard/KeyguardPINView;->mYTrans:I

    iget v9, p0, Lcom/android/keyguard/KeyguardPINView;->mYTransOffset:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v8

    int-to-float v8, v9

    mul-float v9, v8, v0

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    instance-of v8, v7, Lcom/android/keyguard/NumPadAnimationListener;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/android/keyguard/NumPadAnimationListener;

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
