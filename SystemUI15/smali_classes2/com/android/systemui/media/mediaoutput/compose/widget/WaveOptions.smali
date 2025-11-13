.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final amplitude:F

.field public final frequency:F

.field public final trackWidth:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->amplitude:F

    iput p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->frequency:F

    iput p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget v1, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->amplitude:F

    iget v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->amplitude:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->frequency:F

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->frequency:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    iget p1, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->amplitude:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->frequency:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WaveOptions(amplitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->amplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->frequency:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
