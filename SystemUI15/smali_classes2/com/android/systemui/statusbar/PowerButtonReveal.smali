.class public final Lcom/android/systemui/statusbar/PowerButtonReveal;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public final INCREASE_MULTIPLIER:F

.field public final OFF_SCREEN_START_AMOUNT:F

.field public final powerButtonY:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    const/high16 p1, 0x3fa00000    # 1.25f

    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->INCREASE_MULTIPLIER:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/PowerButtonReveal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/PowerButtonReveal;

    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    iget p1, p1, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    iput v1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->interpolatedRevealAmount:F

    if-eqz v0, :cond_2

    sub-float p1, v3, p1

    iget v0, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setPaintColorFilter()V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->INCREASE_MULTIPLIER:F

    iget v2, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    if-eqz p1, :cond_4

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr p1, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v3

    mul-float/2addr v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float/2addr v3, v1

    sub-float/2addr v4, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p0, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {p2, p1, v4, p0, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    sub-float p1, p0, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    add-float/2addr v2, p0

    invoke-virtual {p2, p1, v3, v4, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, v3

    mul-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float/2addr v3, v1

    sub-float/2addr p1, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v3, p0, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    invoke-virtual {p2, p1, v3, v4, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PowerButtonReveal(powerButtonY="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
