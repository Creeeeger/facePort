.class public final Landroidx/compose/animation/core/DecayAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# instance fields
.field public final animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

.field public final durationNanos:J

.field public final endVelocity:Landroidx/compose/animation/core/AnimationVector;

.field public final initialValue:Ljava/lang/Object;

.field public final initialValueVector:Landroidx/compose/animation/core/AnimationVector;

.field public final initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

.field public final targetValue:Ljava/lang/Object;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec;",
            "Landroidx/compose/animation/core/TwoWayConverter;",
            "Ljava/lang/Object;",
            "Landroidx/compose/animation/core/AnimationVector;",
            ")V"
        }
    .end annotation

    check-cast p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    new-instance v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object p1, p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    invoke-direct {v0, p1}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    invoke-direct {p0, v0, p2, p3, p4}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec;",
            "Landroidx/compose/animation/core/TwoWayConverter;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    check-cast p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    new-instance v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object p1, p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    invoke-direct {v0, p1}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    move-object p1, p2

    check-cast p1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object p1, p1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    invoke-direct {p0, v0, p2, p3, p1}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;",
            "Landroidx/compose/animation/core/TwoWayConverter;",
            "Ljava/lang/Object;",
            "Landroidx/compose/animation/core/AnimationVector;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    iput-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object v3, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValue:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v5, v2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/AnimationVector;

    iput-object v3, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-static/range {p4 .. p4}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v2, v2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    check-cast v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object v5, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v5

    iput-object v5, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    iget-object v5, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {v5}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v5

    const/4 v8, 0x0

    :goto_0
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ge v8, v5, :cond_3

    iget-object v11, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :cond_2
    invoke-virtual {v3, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v12

    invoke-virtual {v4, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v13

    iget-object v14, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    check-cast v14, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    iget-object v14, v14, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v14, v13}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v15

    sget v6, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    move/from16 p3, v8

    float-to-double v7, v6

    sub-double v9, v7, v9

    iget v6, v14, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget v14, v14, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v6, v14

    move v14, v5

    float-to-double v5, v6

    div-double/2addr v7, v9

    mul-double/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-float v5, v7

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v12

    move/from16 v7, p3

    invoke-virtual {v11, v6, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v8, v7, 0x1

    move v5, v14

    goto :goto_0

    :cond_3
    iget-object v1, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    check-cast v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object v3, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    iput-object v3, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_5
    iget-object v3, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    move-object v6, v3

    :goto_1
    invoke-virtual {v6}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    iget-object v11, v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    check-cast v11, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    iget-object v11, v11, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v11, v8}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v11

    sget v8, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    float-to-double v13, v8

    sub-double/2addr v13, v9

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    double-to-long v11, v11

    const-wide/32 v13, 0xf4240

    mul-long/2addr v11, v13

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    iput-wide v5, v0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    check-cast v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    invoke-virtual {v1, v5, v6, v2, v4}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_8

    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v2, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v3

    iget-object v4, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-static {v3, v5, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    return-void
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
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    check-cast v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v4, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_0

    invoke-virtual {v4}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    iput-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    iget-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    iget-object v7, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :cond_2
    invoke-virtual {v4, v6}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    iget-object v9, v0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v9, v6}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    iget-object v10, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    check-cast v10, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    const-wide/32 v11, 0xf4240

    div-long v11, p1, v11

    iget-object v10, v10, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v10, v9}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object v9

    const-wide/16 v13, 0x0

    move v15, v6

    iget-wide v5, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    cmp-long v13, v5, v13

    if-lez v13, :cond_3

    long-to-float v11, v11

    long-to-float v5, v5

    div-float/2addr v11, v5

    goto :goto_1

    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_1
    iget v5, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    mul-float/2addr v5, v6

    sget-object v6, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object v6

    iget v6, v6, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->distanceCoefficient:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    move v6, v15

    invoke-virtual {v7, v5, v6}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    move-object v5, v0

    :goto_2
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 2

    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    check-cast v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v1, p1, p2, p0, v0}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

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
