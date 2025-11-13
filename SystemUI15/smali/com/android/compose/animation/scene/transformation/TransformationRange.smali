.class public final Lcom/android/compose/animation/scene/transformation/TransformationRange;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final end:F

.field public final start:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/transformation/TransformationRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/transformation/TransformationRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    iput p2, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    invoke-static {p1}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const-string v2, "Failed requirement."

    if-eqz p0, :cond_1

    cmpg-float p0, v1, p1

    if-gtz p0, :cond_0

    cmpg-float p0, p1, v0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result p0

    if-eqz p0, :cond_3

    cmpg-float p0, v1, p2

    if-gtz p0, :cond_2

    cmpg-float p0, p2, v0

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result p0

    if-eqz p0, :cond_5

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;-><init>(FF)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/compose/animation/scene/transformation/TransformationRange;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static isSpecified(F)Z
    .locals 1

    const/4 v0, 0x1

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/compose/animation/scene/transformation/TransformationRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/compose/animation/scene/transformation/TransformationRange;

    iget v1, p1, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    iget v3, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    iget p1, p1, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final progress(F)F
    .locals 4

    iget v0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    invoke-static {v0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v1

    if-eqz v1, :cond_1

    sub-float/2addr p1, v0

    sub-float/2addr p0, v0

    div-float/2addr p1, p0

    cmpg-float p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    cmpl-float p0, v2, v3

    if-lez p0, :cond_4

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->isSpecified(F)Z

    move-result v1

    if-eqz v1, :cond_3

    div-float/2addr p1, p0

    cmpl-float p0, p1, v3

    if-lez p0, :cond_5

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_3
    sub-float/2addr p1, v0

    sub-float/2addr v3, v0

    div-float/2addr p1, v3

    cmpg-float p0, p1, v2

    if-gez p0, :cond_5

    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransformationRange(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->start:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/compose/animation/scene/transformation/TransformationRange;->end:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
