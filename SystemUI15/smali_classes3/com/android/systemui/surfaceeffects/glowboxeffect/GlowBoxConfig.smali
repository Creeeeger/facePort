.class public final Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final blurAmount:F

.field public final color:I

.field public final duration:J

.field public final easeInDuration:J

.field public final easeOutDuration:J

.field public final endCenterX:F

.field public final endCenterY:F

.field public final height:F

.field public final startCenterX:F

.field public final startCenterY:F

.field public final width:F


# direct methods
.method public constructor <init>(FFFFFFIFJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterX:F

    iput p2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterY:F

    iput p3, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterX:F

    iput p4, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterY:F

    iput p5, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->width:F

    iput p6, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->height:F

    iput p7, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->color:I

    iput p8, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->blurAmount:F

    iput-wide p9, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->duration:J

    iput-wide p11, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeInDuration:J

    iput-wide p13, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeOutDuration:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;

    iget v1, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterX:F

    iget v3, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterX:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterY:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterX:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterY:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->width:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->width:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->height:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->height:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->color:I

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->color:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->blurAmount:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->blurAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->duration:J

    iget-wide v5, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeInDuration:J

    iget-wide v5, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeInDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeOutDuration:J

    iget-wide p0, p1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeOutDuration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterY:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterX:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterY:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->width:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->height:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->color:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->blurAmount:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->duration:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeInDuration:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeOutDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlowBoxConfig(startCenterX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startCenterY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->startCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endCenterX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endCenterY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->endCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blurAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->blurAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", easeInDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeInDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", easeOutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;->easeOutDuration:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
