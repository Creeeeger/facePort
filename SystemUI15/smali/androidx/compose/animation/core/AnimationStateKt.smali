.class public abstract Landroidx/compose/animation/core/AnimationStateKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;
    .locals 9

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance p2, Landroidx/compose/animation/core/AnimationState;

    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-direct {v3, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    return-object p2
.end method

.method public static copy$default(Landroidx/compose/animation/core/AnimationState;F)Landroidx/compose/animation/core/AnimationState;
    .locals 11

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    iget v0, v0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    iget-wide v5, p0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    iget-wide v7, p0, Landroidx/compose/animation/core/AnimationState;->finishedTimeNanos:J

    iget-boolean v9, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    new-instance v10, Landroidx/compose/animation/core/AnimationState;

    iget-object v2, p0, Landroidx/compose/animation/core/AnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-direct {v4, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    return-object v10
.end method
