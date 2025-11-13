.class public final Lcom/android/systemui/statusbar/CircleReveal;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final endRadius:I

.field public final startRadius:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    iput p2, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    iput p3, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    iput p4, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/CircleReveal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/CircleReveal;

    iget v1, p1, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    iget v3, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    iget v3, p1, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    iget v3, p1, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    iget p1, p1, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->interpolatedRevealAmount:F

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    iget p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    int-to-float p1, p1

    sub-float v0, p1, v1

    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    int-to-float p0, p0

    sub-float v2, p0, v1

    add-float/2addr p1, v1

    add-float/2addr p0, v1

    invoke-virtual {p2, v0, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CircleReveal(centerX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
