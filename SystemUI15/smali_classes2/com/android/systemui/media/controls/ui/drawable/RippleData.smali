.class public final Lcom/android/systemui/media/controls/ui/drawable/RippleData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alpha:F

.field public highlight:F

.field public maxSize:F

.field public minSize:F

.field public progress:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->x:F

    iput p2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->y:F

    iput p3, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->alpha:F

    iput p4, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->progress:F

    iput p5, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->minSize:F

    iput p6, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->maxSize:F

    iput p7, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->highlight:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;

    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->x:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->y:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->y:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->alpha:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->alpha:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->progress:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->progress:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->minSize:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->minSize:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->maxSize:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->maxSize:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->highlight:F

    iget p1, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->highlight:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->x:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->y:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->alpha:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->progress:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->minSize:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->maxSize:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->highlight:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->x:F

    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->y:F

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->alpha:F

    iget v3, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->progress:F

    iget v4, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->minSize:F

    iget v5, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->maxSize:F

    iget p0, p0, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->highlight:F

    const-string v6, "RippleData(x="

    const-string v7, ", y="

    const-string v8, ", alpha="

    invoke-static {v6, v0, v7, v1, v8}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
