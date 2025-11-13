.class public final Landroidx/compose/animation/core/VectorizedFloatDecaySpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

.field public targetVector:Landroidx/compose/animation/core/AnimationVector;

.field public valueVector:Landroidx/compose/animation/core/AnimationVector;

.field public velocityVector:Landroidx/compose/animation/core/AnimationVector;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    const-string/jumbo v3, "targetVector"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz v5, :cond_1

    move-object/from16 v6, p1

    invoke-virtual {v6, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    move-object/from16 v8, p2

    invoke-virtual {v8, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    iget-object v10, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    iget-object v10, v10, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v10, v9}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v11

    sget v13, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v15, v13, v15

    iget v2, v10, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget v10, v10, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v2, v10

    move v10, v1

    float-to-double v1, v2

    div-double/2addr v13, v15

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    double-to-float v1, v11

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v7

    invoke-virtual {v5, v2, v4}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v4, v4, 0x1

    move v1, v10

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_2
    const/4 v1, 0x0

    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->targetVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    const/4 v2, 0x0

    const-string/jumbo v3, "velocityVector"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz v5, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, p4

    invoke-virtual {v6, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    iget-object v8, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->floatDecaySpec:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    const-wide/32 v9, 0xf4240

    div-long v9, p1, v9

    iget-object v8, v8, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    invoke-virtual {v8, v7}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object v7

    iget-wide v11, v7, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-lez v8, :cond_1

    long-to-float v8, v9

    long-to-float v9, v11

    div-float/2addr v8, v9

    goto :goto_1

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v8}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object v8

    iget v9, v7, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    iget v8, v8, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->velocityCoefficient:F

    mul-float/2addr v9, v8

    iget v7, v7, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    mul-float/2addr v9, v7

    long-to-float v7, v11

    div-float/2addr v9, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v7

    invoke-virtual {v5, v9, v4}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
