.class public final Landroidx/compose/animation/core/AnimationVector4D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public v1:F

.field public v2:F

.field public v3:F

.field public v4:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    iput p2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iput p3, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iput p4, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector4D;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final get$animation_core_release(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    goto :goto_0

    :cond_3
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    :goto_0
    return p0
.end method

.method public final getSize$animation_core_release()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;
    .locals 1

    new-instance p0, Landroidx/compose/animation/core/AnimationVector4D;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    return-object p0
.end method

.method public final reset$animation_core_release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    return-void
.end method

.method public final set$animation_core_release(FI)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    goto :goto_0

    :cond_1
    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    goto :goto_0

    :cond_2
    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    goto :goto_0

    :cond_3
    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationVector4D: v1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
