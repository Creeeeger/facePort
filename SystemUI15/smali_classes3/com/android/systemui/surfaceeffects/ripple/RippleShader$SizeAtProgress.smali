.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public height:F

.field public t:F

.field public width:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    iput p3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->width:F

    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->height:F

    const-string v2, "SizeAtProgress(t="

    const-string v3, ", width="

    const-string v4, ", height="

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
