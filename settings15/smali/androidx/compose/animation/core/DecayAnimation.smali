.class public final Landroidx/compose/animation/core/DecayAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# instance fields
.field public final animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

.field public final durationNanos:J

.field public final endVelocity:Landroidx/compose/animation/core/AnimationVector;

.field public final initialValue:Ljava/lang/Object;

.field public final initialValueVector:Landroidx/compose/animation/core/AnimationVector;

.field public final initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

.field public final targetValue:Ljava/lang/Object;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 10

    new-instance v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object p1, p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    invoke-direct {v0, p1}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;-><init>(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValue:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object p1, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p4}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v0, p1, p4}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iget-object p2, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    iget-object p2, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object p2

    iput-object p2, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    iget-object p2, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p2

    const/4 p3, 0x0

    const-wide/16 v1, 0x0

    move v3, p3

    :goto_0
    if-ge v3, p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v4

    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    iget-object v5, v5, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v5, v4}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v4

    sget v6, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    iget-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p1, v1, v2, p2, p4}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result p1

    :goto_1
    if-ge p3, p1, :cond_2

    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p2, p3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result p4

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-static {p4, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    invoke-virtual {p2, p4, p3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string/jumbo p0, "velocityVector"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final getDurationNanos()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    return-wide v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public final getValueFromNanos(J)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v4, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_0

    invoke-virtual {v4}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    iput-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    iget-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    const-string/jumbo v6, "valueVector"

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_3

    iget-object v8, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz v8, :cond_2

    invoke-virtual {v4, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    iget-object v10, v0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v10, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v10

    iget-object v11, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    const-wide/32 v12, 0xf4240

    div-long v12, p1, v12

    iget-object v11, v11, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v11, v10}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object v10

    const-wide/16 v14, 0x0

    move-object/from16 v16, v6

    iget-wide v5, v10, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    cmp-long v14, v5, v14

    if-lez v14, :cond_1

    long-to-float v12, v12

    long-to-float v5, v5

    div-float/2addr v12, v5

    goto :goto_1

    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_1
    iget v5, v10, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, v10, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    mul-float/2addr v5, v6

    invoke-static {v12}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object v6

    iget v6, v6, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->distanceCoefficient:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    invoke-virtual {v8, v5, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v16

    goto :goto_0

    :cond_2
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    move-object/from16 v16, v6

    const/4 v0, 0x0

    iget-object v2, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz v2, :cond_4

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v16, v6

    const/4 v0, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, v0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 2

    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    return-object p0
.end method

.method public final isInfinite()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
