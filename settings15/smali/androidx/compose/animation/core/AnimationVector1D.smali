.class public final Landroidx/compose/animation/core/AnimationVector1D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector1D;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    iget p1, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

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
    .locals 0

    if-nez p1, :cond_0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSize$animation_core_release()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;
    .locals 1

    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    return-object p0
.end method

.method public final reset$animation_core_release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return-void
.end method

.method public final set$animation_core_release(FI)V
    .locals 0

    if-nez p2, :cond_0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationVector1D: value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
