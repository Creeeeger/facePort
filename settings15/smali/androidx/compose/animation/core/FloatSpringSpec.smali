.class public final Landroidx/compose/animation/core/FloatSpringSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# instance fields
.field public final spring:Landroidx/compose/animation/core/SpringSimulation;

.field public final visibilityThreshold:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    new-instance p3, Landroidx/compose/animation/core/SpringSimulation;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, p3, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    iput v0, p3, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-ltz v3, :cond_1

    iput p1, p3, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    const/4 p1, 0x0

    iput-boolean p1, p3, Landroidx/compose/animation/core/SpringSimulation;->initialized:Z

    mul-double/2addr v1, v1

    double-to-float v1, v1

    cmpg-float v0, v1, v0

    if-lez v0, :cond_0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p3, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    iput-boolean p1, p3, Landroidx/compose/animation/core/SpringSimulation;->initialized:Z

    iput-object p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getDurationNanos(FFF)J
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    iget-wide v2, v1, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v2, v2

    double-to-float v2, v2

    iget v1, v1, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    sub-float v3, p1, p2

    iget v0, v0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    div-float/2addr v3, v0

    div-float v0, p3, v0

    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-nez v4, :cond_0

    const-wide v0, 0x8637bd05af6L

    goto/16 :goto_13

    :cond_0
    float-to-double v4, v2

    float-to-double v1, v1

    float-to-double v6, v0

    float-to-double v8, v3

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v1, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    mul-double v16, v14, v14

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v18

    sub-double v16, v16, v4

    neg-double v3, v14

    const-wide/16 v14, 0x0

    cmpg-double v0, v16, v14

    if-gez v0, :cond_1

    new-instance v5, Landroidx/compose/animation/core/ComplexDouble;

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-direct {v5, v14, v15, v12, v13}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroidx/compose/animation/core/ComplexDouble;

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-direct {v5, v12, v13, v14, v15}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    :goto_0
    iget-wide v12, v5, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    add-double/2addr v12, v3

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v18

    iput-wide v12, v5, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    iget-wide v12, v5, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    mul-double v12, v12, v18

    iput-wide v12, v5, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    if-gez v0, :cond_2

    new-instance v0, Landroidx/compose/animation/core/ComplexDouble;

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-direct {v0, v14, v15, v12, v13}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/compose/animation/core/ComplexDouble;

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-direct {v0, v12, v13, v14, v15}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    :goto_1
    iget-wide v12, v0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    const/4 v14, -0x1

    int-to-double v14, v14

    mul-double/2addr v12, v14

    move-wide/from16 v16, v10

    iget-wide v10, v0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    mul-double/2addr v10, v14

    add-double/2addr v12, v3

    mul-double v12, v12, v18

    iput-wide v12, v0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    mul-double v10, v10, v18

    iput-wide v10, v0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    const-wide/16 v3, 0x0

    cmpg-double v10, v8, v3

    if-nez v10, :cond_3

    cmpg-double v11, v6, v3

    if-nez v11, :cond_3

    const-wide/16 v0, 0x0

    goto/16 :goto_13

    :cond_3
    if-gez v10, :cond_4

    neg-double v6, v6

    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v1, v8

    const/4 v11, 0x1

    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-lez v10, :cond_d

    iget-wide v1, v5, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    iget-wide v8, v0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    mul-double v20, v1, v3

    sub-double v20, v20, v6

    sub-double v5, v1, v8

    div-double v12, v20, v5

    sub-double/2addr v3, v12

    div-double v20, v16, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    div-double v14, v20, v1

    div-double v20, v16, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    move-wide/from16 p0, v1

    div-double v0, v20, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v11

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    xor-int/2addr v7, v11

    if-eqz v7, :cond_6

    move-wide/from16 v20, p0

    move-wide v14, v0

    goto :goto_5

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v11

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    xor-int/2addr v7, v11

    if-eqz v7, :cond_8

    :goto_4
    move-wide/from16 v20, p0

    goto :goto_5

    :cond_8
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    goto :goto_4

    :goto_5
    mul-double v22, v3, v20

    neg-double v0, v12

    mul-double/2addr v0, v8

    div-double v0, v22, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sub-double v24, v8, v20

    div-double v0, v0, v24

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_a

    const-wide/16 v24, 0x0

    cmpg-double v7, v0, v24

    if-gtz v7, :cond_9

    goto :goto_6

    :cond_9
    cmpl-double v7, v0, v24

    if-lez v7, :cond_b

    mul-double v24, v20, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->exp(D)D

    move-result-wide v24

    mul-double v24, v24, v3

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    add-double v0, v0, v24

    neg-double v0, v0

    cmpg-double v0, v0, v16

    if-gez v0, :cond_b

    const-wide/16 v0, 0x0

    cmpl-double v5, v12, v0

    if-lez v5, :cond_a

    cmpg-double v5, v3, v0

    if-gez v5, :cond_a

    move-wide/from16 v0, v16

    const-wide/16 v14, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    move-wide/from16 v0, v16

    :goto_7
    neg-double v0, v0

    :goto_8
    move-wide v5, v0

    goto :goto_9

    :cond_b
    move-wide/from16 v0, v16

    mul-double v14, v12, v8

    mul-double/2addr v14, v8

    neg-double v14, v14

    mul-double v16, v22, v20

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v14, v5

    goto :goto_8

    :goto_9
    mul-double v0, v20, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v0, v0, v22

    mul-double v16, v12, v8

    mul-double v24, v8, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->exp(D)D

    move-result-wide v24

    mul-double v24, v24, v16

    add-double v24, v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v24, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v24

    if-gez v0, :cond_c

    goto/16 :goto_12

    :cond_c
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v10, 0x0

    :goto_a
    cmpl-double v7, v18, v0

    if-lez v7, :cond_17

    const/16 v0, 0x64

    if-ge v10, v0, :cond_17

    add-int/lit8 v10, v10, 0x1

    mul-double v1, v20, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    mul-double v18, v18, v3

    mul-double v24, v8, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->exp(D)D

    move-result-wide v26

    mul-double v26, v26, v12

    add-double v26, v26, v18

    add-double v26, v26, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double v1, v1, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    mul-double v18, v18, v16

    add-double v18, v18, v1

    div-double v26, v26, v18

    sub-double v1, v14, v26

    sub-double/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide v14, v1

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    goto :goto_a

    :cond_d
    move-wide/from16 v12, v16

    cmpg-double v1, v1, v8

    if-gez v1, :cond_e

    iget-wide v0, v5, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    mul-double v8, v0, v3

    sub-double/2addr v6, v8

    iget-wide v8, v5, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    div-double/2addr v6, v8

    mul-double/2addr v3, v3

    mul-double/2addr v6, v6

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v10, v12, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v14, v2, v0

    goto/16 :goto_12

    :cond_e
    iget-wide v1, v5, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    mul-double v8, v1, v3

    sub-double/2addr v6, v8

    div-double v14, v12, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v14, v1

    div-double v16, v12, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    move-wide/from16 v20, v16

    const/4 v5, 0x0

    :goto_b
    const/4 v0, 0x6

    if-ge v5, v0, :cond_f

    div-double v20, v20, v1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    sub-double v20, v16, v20

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_f
    div-double v10, v20, v1

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-nez v16, :cond_10

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_10

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x1

    const/16 v16, 0x0

    :goto_c
    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_11

    move-wide v14, v10

    goto :goto_e

    :cond_11
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-nez v16, :cond_12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_12

    move/from16 v16, v0

    goto :goto_d

    :cond_12
    const/16 v16, 0x0

    :goto_d
    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_13

    goto :goto_e

    :cond_13
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    :goto_e
    add-double v10, v8, v6

    neg-double v10, v10

    mul-double v16, v1, v6

    div-double v10, v10, v16

    mul-double v16, v1, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v20, v20, v3

    mul-double v23, v6, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v16, v16, v23

    move-wide/from16 v23, v1

    add-double v0, v16, v20

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_15

    const-wide/16 v16, 0x0

    cmpg-double v20, v10, v16

    if-gtz v20, :cond_14

    goto :goto_f

    :cond_14
    cmpl-double v10, v10, v16

    if-lez v10, :cond_16

    neg-double v0, v0

    cmpg-double v0, v0, v12

    if-gez v0, :cond_16

    cmpg-double v0, v6, v16

    if-gez v0, :cond_15

    cmpl-double v0, v3, v16

    if-lez v0, :cond_15

    move-wide/from16 v14, v16

    :cond_15
    :goto_f
    neg-double v10, v12

    goto :goto_10

    :cond_16
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, v0, v23

    neg-double v0, v0

    div-double v10, v3, v6

    sub-double v14, v0, v10

    move-wide v10, v12

    :goto_10
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v5, 0x0

    :goto_11
    cmpl-double v12, v18, v0

    if-lez v12, :cond_17

    const/16 v12, 0x64

    if-ge v5, v12, :cond_17

    add-int/lit8 v5, v5, 0x1

    mul-double v16, v6, v14

    add-double v16, v16, v3

    mul-double v18, v23, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v20, v20, v16

    add-double v20, v20, v10

    const/4 v2, 0x1

    int-to-double v0, v2

    add-double v0, v18, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v16, v16, v0

    div-double v20, v20, v16

    sub-double v0, v14, v20

    sub-double/2addr v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide v14, v0

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    goto :goto_11

    :cond_17
    :goto_12
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v14, v0

    double-to-long v0, v14

    :goto_13
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEndVelocity(FFF)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getValueFromNanos(JFFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    iput p4, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    invoke-virtual {p0, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->updateValues-IJZedt4$animation_core_release(FFJ)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long/2addr p0, p2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final getVelocityFromNanos(JFFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    iput p4, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    invoke-virtual {p0, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->updateValues-IJZedt4$animation_core_release(FFJ)J

    move-result-wide p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
