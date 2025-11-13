.class public final Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public centerX:F

.field public centerY:F

.field public final endRadius:F

.field public final startRadius:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    iput p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    iput p3, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->startRadius:F

    iput p4, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->endRadius:F

    return-void
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->endRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->startRadius:F

    invoke-static {v1, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_1

    sub-float/2addr v2, p1

    iget p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    cmpg-float p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setPaintColorFilter()V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    sub-float v0, p1, v1

    iget p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    sub-float v2, p0, v1

    add-float/2addr p1, v1

    add-float/2addr p0, v1

    invoke-virtual {p2, v0, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    return-void
.end method
