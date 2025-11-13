.class public final Landroidx/compose/animation/core/SpringSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/animation/core/FiniteAnimationSpec;


# instance fields
.field public final dampingRatio:F

.field public final stiffness:F

.field public final visibilityThreshold:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iput p2, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    iput-object p3, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x44bb8000    # 1500.0f

    invoke-direct {p0, v0, v1, p1}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/animation/core/SpringSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/SpringSpec;

    iget v0, p1, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iget v2, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    iget v2, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget p0, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/VectorizedSpringSpec;

    iget-object v1, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object p1, p1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    :goto_0
    iget v1, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iget p0, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    invoke-direct {v0, v1, p0, p1}, Landroidx/compose/animation/core/VectorizedSpringSpec;-><init>(FFLandroidx/compose/animation/core/AnimationVector;)V

    return-object v0
.end method

.method public final vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/VectorizedSpringSpec;

    iget-object v1, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object p1, p1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    :goto_0
    iget v1, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iget p0, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    invoke-direct {v0, v1, p0, p1}, Landroidx/compose/animation/core/VectorizedSpringSpec;-><init>(FFLandroidx/compose/animation/core/AnimationVector;)V

    return-object v0
.end method
