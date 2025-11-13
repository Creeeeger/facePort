.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;-><init>()V

    return-void
.end method

.method public static final access$getFade(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;F)F
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iget v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    invoke-static {p0, v0, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->subProgress(FFF)F

    move-result p0

    iget v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    invoke-static {v0, p1, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->subProgress(FFF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static subProgress(FFF)F
    .locals 2

    cmpg-float v0, p0, p1

    if-nez v0, :cond_1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method
