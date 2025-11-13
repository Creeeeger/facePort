.class public final Landroidx/compose/animation/core/CubicBezierEasing;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final max:F

.field public final min:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    iput v2, v0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iput v3, v0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iput v4, v0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v1, 0x5

    new-array v1, v1, [F

    const/4 v3, 0x0

    sub-float v5, v2, v3

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    sub-float v7, v4, v2

    mul-float/2addr v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v4

    mul-float/2addr v9, v6

    float-to-double v10, v5

    float-to-double v12, v7

    float-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v12, v16

    sub-double v20, v10, v18

    add-double v20, v20, v14

    const-wide/16 v22, 0x0

    cmpg-double v22, v20, v22

    const/4 v6, 0x0

    if-nez v22, :cond_1

    cmpg-double v10, v12, v14

    if-nez v10, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    sub-double v10, v18, v14

    mul-double v14, v14, v16

    sub-double v18, v18, v14

    div-double v10, v10, v18

    double-to-float v10, v10

    invoke-static {v10, v1, v6}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v10

    goto :goto_0

    :cond_1
    mul-double v16, v12, v12

    mul-double/2addr v14, v10

    sub-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    neg-double v14, v14

    neg-double v10, v10

    add-double/2addr v10, v12

    add-double v12, v14, v10

    neg-double v12, v12

    div-double v12, v12, v20

    double-to-float v12, v12

    invoke-static {v12, v1, v6}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v12

    sub-double/2addr v14, v10

    div-double v14, v14, v20

    double-to-float v10, v14

    invoke-static {v10, v1, v12}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v10

    add-int/2addr v10, v12

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    aget v12, v1, v6

    aget v13, v1, v11

    cmpl-float v14, v12, v13

    if-lez v14, :cond_2

    aput v13, v1, v6

    aput v12, v1, v11

    goto :goto_0

    :cond_2
    cmpg-float v11, v12, v13

    if-nez v11, :cond_3

    add-int/lit8 v10, v10, -0x1

    :cond_3
    :goto_0
    sub-float v11, v7, v5

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    sub-float/2addr v9, v7

    mul-float/2addr v9, v12

    neg-float v7, v11

    sub-float/2addr v9, v11

    div-float/2addr v7, v9

    invoke-static {v7, v1, v10}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v7

    add-int/2addr v7, v10

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    :goto_1
    if-ge v6, v7, :cond_4

    aget v11, v1, v6

    sub-float v13, v2, v4

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v13, v14

    add-float/2addr v13, v8

    sub-float/2addr v13, v3

    mul-float v15, v2, v12

    sub-float v15, v4, v15

    add-float/2addr v15, v3

    mul-float/2addr v15, v14

    mul-float/2addr v13, v11

    add-float/2addr v13, v15

    mul-float/2addr v13, v11

    add-float/2addr v13, v5

    mul-float/2addr v13, v11

    add-float/2addr v13, v3

    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    shr-long v3, v1, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iput v3, v0, Landroidx/compose/animation/core/CubicBezierEasing;->min:F

    and-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/compose/animation/core/CubicBezierEasing;->max:F

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/animation/core/CubicBezierEasing;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/CubicBezierEasing;

    iget v0, p1, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    cmpg-float v0, v1, v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    iget p1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CubicBezierEasing(a="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transform(F)F
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_21

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_21

    sub-float v4, v2, v1

    iget v5, v0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    sub-float v6, v5, v1

    iget v7, v0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    sub-float v8, v7, v1

    sub-float v9, v3, v1

    float-to-double v10, v4

    float-to-double v12, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    sub-double v12, v10, v12

    float-to-double v14, v8

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v14

    sub-float v3, v6, v4

    float-to-double v2, v3

    mul-double/2addr v2, v14

    neg-float v4, v4

    float-to-double v14, v4

    sub-float/2addr v6, v8

    move v4, v7

    float-to-double v6, v6

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v18

    add-double/2addr v6, v14

    float-to-double v8, v9

    add-double/2addr v6, v8

    const-wide/16 v8, 0x0

    sub-double v14, v6, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v20, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v14, v14, v20

    const/high16 v15, 0x40000000    # 2.0f

    const v22, 0x3f800007    # 1.0000008f

    const/high16 v23, -0x4aa00000

    const/high16 v24, 0x7fc00000    # Float.NaN

    if-gez v14, :cond_a

    sub-double v6, v12, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v20

    if-gez v6, :cond_4

    sub-double v6, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v20

    if-gez v6, :cond_0

    goto/16 :goto_9

    :cond_0
    neg-double v6, v10

    div-double/2addr v6, v2

    double-to-float v2, v6

    const/4 v3, 0x0

    cmpg-float v6, v2, v3

    if-gez v6, :cond_2

    cmpl-float v2, v2, v23

    if-ltz v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move/from16 v2, v24

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v3

    if-lez v6, :cond_3

    cmpg-float v2, v2, v22

    if-gtz v2, :cond_1

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    :goto_2
    move/from16 v24, v2

    goto/16 :goto_9

    :cond_4
    mul-double v6, v2, v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v8

    sub-double v8, v6, v2

    div-double/2addr v8, v12

    double-to-float v8, v8

    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    if-gez v10, :cond_6

    cmpl-float v8, v8, v23

    if-ltz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    move/from16 v8, v24

    goto :goto_3

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v9

    if-lez v10, :cond_7

    cmpg-float v8, v8, v22

    if-gtz v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_7
    :goto_3
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_8

    :goto_4
    move/from16 v24, v8

    goto/16 :goto_9

    :cond_8
    neg-double v2, v2

    sub-double/2addr v2, v6

    div-double/2addr v2, v12

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v6, v2, v3

    if-gez v6, :cond_9

    cmpl-float v2, v2, v23

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v3

    if-lez v6, :cond_3

    cmpg-float v2, v2, v22

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_a
    div-double/2addr v12, v6

    div-double/2addr v2, v6

    div-double/2addr v10, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v20, v2, v6

    mul-double v6, v12, v12

    sub-double v20, v20, v6

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    div-double v20, v20, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v12

    mul-double v16, v16, v12

    mul-double v16, v16, v12

    mul-double/2addr v6, v12

    mul-double/2addr v6, v2

    sub-double v16, v16, v6

    const-wide/high16 v2, 0x403b000000000000L    # 27.0

    mul-double/2addr v10, v2

    add-double v10, v10, v16

    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    div-double/2addr v10, v2

    mul-double v2, v10, v10

    mul-double v6, v20, v20

    mul-double v6, v6, v20

    add-double/2addr v2, v6

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    div-double v12, v12, v16

    cmpg-double v8, v2, v8

    if-gez v8, :cond_16

    neg-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    neg-double v6, v10

    div-double/2addr v6, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_b

    move-wide v6, v8

    :cond_b
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_c

    move-wide v6, v8

    :cond_c
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v2

    mul-float/2addr v2, v15

    float-to-double v2, v2

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    sub-double/2addr v8, v12

    double-to-float v8, v8

    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    if-gez v10, :cond_e

    cmpl-float v8, v8, v23

    if-ltz v8, :cond_d

    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    move/from16 v8, v24

    goto :goto_5

    :cond_e
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v9

    if-lez v10, :cond_f

    cmpg-float v8, v8, v22

    if-gtz v8, :cond_d

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_f
    :goto_5
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_4

    :cond_10
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v8, v6

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    sub-double/2addr v8, v12

    double-to-float v8, v8

    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    if-gez v10, :cond_12

    cmpl-float v8, v8, v23

    if-ltz v8, :cond_11

    const/4 v8, 0x0

    goto :goto_6

    :cond_11
    move/from16 v8, v24

    goto :goto_6

    :cond_12
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v9

    if-lez v10, :cond_13

    cmpg-float v8, v8, v22

    if-gtz v8, :cond_11

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_13
    :goto_6
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_4

    :cond_14
    const-wide v8, 0x402921fb54442d18L    # 12.566370614359172

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v6, v12

    double-to-float v2, v6

    const/4 v3, 0x0

    cmpg-float v6, v2, v3

    if-gez v6, :cond_15

    cmpl-float v2, v2, v23

    if-ltz v2, :cond_1

    goto/16 :goto_0

    :cond_15
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v3

    if-lez v6, :cond_3

    cmpg-float v2, v2, v22

    if-gtz v2, :cond_1

    goto/16 :goto_1

    :cond_16
    if-nez v8, :cond_1c

    double-to-float v2, v10

    invoke-static {v2}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v2

    neg-float v2, v2

    mul-float v3, v2, v15

    double-to-float v6, v12

    sub-float/2addr v3, v6

    const/4 v7, 0x0

    cmpg-float v8, v3, v7

    if-gez v8, :cond_18

    cmpl-float v3, v3, v23

    if-ltz v3, :cond_17

    const/4 v3, 0x0

    goto :goto_7

    :cond_17
    move/from16 v3, v24

    goto :goto_7

    :cond_18
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v3, v7

    if-lez v8, :cond_19

    cmpg-float v3, v3, v22

    if-gtz v3, :cond_17

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_19
    :goto_7
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_1a

    move/from16 v24, v3

    goto :goto_9

    :cond_1a
    neg-float v2, v2

    sub-float/2addr v2, v6

    const/4 v3, 0x0

    cmpg-float v6, v2, v3

    if-gez v6, :cond_1b

    cmpl-float v2, v2, v23

    if-ltz v2, :cond_1

    goto/16 :goto_0

    :cond_1b
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v3

    if-lez v6, :cond_3

    cmpg-float v2, v2, v22

    if-gtz v2, :cond_1

    goto/16 :goto_1

    :cond_1c
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    neg-double v6, v10

    add-double/2addr v6, v2

    double-to-float v6, v6

    invoke-static {v6}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v6

    add-double/2addr v10, v2

    double-to-float v2, v10

    invoke-static {v2}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v2

    sub-float/2addr v6, v2

    float-to-double v2, v6

    sub-double/2addr v2, v12

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v6, v2, v3

    if-gez v6, :cond_1d

    cmpl-float v2, v2, v23

    if-ltz v2, :cond_1

    :goto_8
    move v2, v3

    goto/16 :goto_2

    :cond_1d
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v3

    if-lez v6, :cond_3

    cmpg-float v2, v2, v22

    if-gtz v2, :cond_1

    goto :goto_8

    :goto_9
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    iget v3, v0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    iget v6, v0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    if-nez v2, :cond_20

    const v1, 0x3eaaaaab

    sub-float v2, v6, v3

    add-float/2addr v2, v1

    mul-float/2addr v15, v6

    sub-float/2addr v3, v15

    mul-float v2, v2, v24

    add-float/2addr v2, v3

    mul-float v2, v2, v24

    add-float/2addr v2, v6

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v2, v1

    mul-float v2, v2, v24

    iget v1, v0, Landroidx/compose/animation/core/CubicBezierEasing;->min:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1e

    move v2, v1

    :cond_1e
    iget v0, v0, Landroidx/compose/animation/core/CubicBezierEasing;->max:F

    cmpl-float v1, v2, v0

    if-lez v1, :cond_1f

    goto :goto_a

    :cond_1f
    move v0, v2

    goto :goto_a

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "The cubic curve with parameters ("

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") has no solution at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move v0, v1

    :goto_a
    return v0
.end method
