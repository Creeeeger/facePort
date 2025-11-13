.class public final Lcom/google/ux/material/libmonet/hct/Hct;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final argb:I

.field public final chroma:D

.field public final hue:D

.field public final tone:D


# direct methods
.method private constructor <init>(I)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ux/material/libmonet/hct/Hct;->argb:I

    invoke-static {p1}, Lcom/google/ux/material/libmonet/hct/Cam16;->fromInt(I)Lcom/google/ux/material/libmonet/hct/Cam16;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/ux/material/libmonet/hct/Cam16;->hue:D

    iput-wide v2, p0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v1, v1, Lcom/google/ux/material/libmonet/hct/Cam16;->chroma:D

    iput-wide v1, p0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v3

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v5

    const/4 p1, 0x3

    new-array p1, p1, [D

    const/4 v7, 0x0

    aput-wide v1, p1, v7

    aput-wide v3, p1, v0

    const/4 v1, 0x2

    aput-wide v5, p1, v1

    sget-object v1, Lcom/google/ux/material/libmonet/utils/ColorUtils;->SRGB_TO_XYZ:[[D

    invoke-static {p1, v1}, Lcom/google/ux/material/libmonet/utils/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object p1

    aget-wide v0, p1, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->labF(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    return-void
.end method

.method public static from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;
    .locals 48

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v10, p2, v8

    if-ltz v10, :cond_1d

    cmpg-double v8, p4, v8

    if-ltz v8, :cond_1d

    const-wide v8, 0x4058fffe5c91d14eL    # 99.9999

    cmpl-double v8, p4, v8

    if-lez v8, :cond_0

    goto/16 :goto_16

    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/google/ux/material/libmonet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v8

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v12

    invoke-static/range {p4 .. p5}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->yFromLstar(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    mul-double v14, v14, v16

    sget-object v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->DEFAULT:Lcom/google/ux/material/libmonet/hct/ViewingConditions;

    iget-wide v4, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->n:D

    move-wide/from16 v20, v12

    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v11, v4

    const-wide v4, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v4, v11, v4

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-double v24, v8, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    const-wide v26, 0x400e666666666666L    # 3.8

    add-double v24, v24, v26

    const-wide/high16 v26, 0x3fd0000000000000L    # 0.25

    mul-double v24, v24, v26

    const-wide v26, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double v24, v24, v26

    iget-wide v0, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->nc:D

    mul-double v24, v24, v0

    iget-wide v0, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->ncb:D

    mul-double v24, v24, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    const/4 v13, 0x0

    :goto_0
    sget-object v29, Lcom/google/ux/material/libmonet/hct/HctSolver;->Y_FROM_LINRGB:[D

    const/4 v3, 0x5

    const-wide/16 v30, 0x0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    if-ge v13, v3, :cond_9

    move-wide/from16 v34, v8

    div-double v7, v14, v32

    cmpl-double v9, p2, v30

    if-eqz v9, :cond_2

    cmpl-double v9, v14, v30

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    div-double v36, p2, v36

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v36, v30

    :goto_2
    mul-double v2, v36, v4

    move-wide/from16 p4, v7

    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-wide v6, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->c:D

    div-double v6, v11, v6

    iget-wide v11, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->z:D

    div-double/2addr v6, v11

    move-wide/from16 v11, p4

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-wide v11, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->aw:D

    mul-double/2addr v6, v11

    iget-wide v11, v10, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->nbb:D

    div-double/2addr v6, v11

    const-wide v11, 0x3fd3851eb851eb85L    # 0.305

    add-double/2addr v11, v6

    const-wide/high16 v38, 0x4037000000000000L    # 23.0

    mul-double v11, v11, v38

    mul-double/2addr v11, v2

    mul-double v38, v38, v24

    mul-double v40, v2, v16

    mul-double v40, v40, v27

    add-double v40, v40, v38

    const-wide/high16 v38, 0x405b000000000000L    # 108.0

    mul-double v2, v2, v38

    mul-double/2addr v2, v0

    add-double v2, v2, v40

    div-double/2addr v11, v2

    mul-double v2, v11, v27

    mul-double/2addr v11, v0

    const-wide v38, 0x407cc00000000000L    # 460.0

    mul-double v6, v6, v38

    const-wide v38, 0x407c300000000000L    # 451.0

    mul-double v38, v38, v2

    add-double v38, v38, v6

    const-wide/high16 v40, 0x4072000000000000L    # 288.0

    mul-double v40, v40, v11

    add-double v40, v40, v38

    const-wide v38, 0x4095ec0000000000L    # 1403.0

    div-double v40, v40, v38

    const-wide v42, 0x408bd80000000000L    # 891.0

    mul-double v42, v42, v2

    sub-double v42, v6, v42

    const-wide v44, 0x4070500000000000L    # 261.0

    mul-double v44, v44, v11

    sub-double v42, v42, v44

    div-double v42, v42, v38

    const-wide v44, 0x406b800000000000L    # 220.0

    mul-double v2, v2, v44

    sub-double/2addr v6, v2

    const-wide v2, 0x40b89c0000000000L    # 6300.0

    mul-double/2addr v11, v2

    sub-double/2addr v6, v11

    div-double v6, v6, v38

    invoke-static/range {v40 .. v41}, Lcom/google/ux/material/libmonet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v2

    invoke-static/range {v42 .. v43}, Lcom/google/ux/material/libmonet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v11

    invoke-static {v6, v7}, Lcom/google/ux/material/libmonet/hct/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v6

    const/4 v8, 0x3

    new-array v9, v8, [D

    const/4 v8, 0x0

    aput-wide v2, v9, v8

    const/4 v2, 0x1

    aput-wide v11, v9, v2

    const/4 v11, 0x2

    aput-wide v6, v9, v11

    sget-object v3, Lcom/google/ux/material/libmonet/hct/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    invoke-static {v9, v3}, Lcom/google/ux/material/libmonet/utils/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object v6

    aget-wide v38, v6, v8

    cmpg-double v3, v38, v30

    if-ltz v3, :cond_4

    aget-wide v40, v6, v2

    cmpg-double v3, v40, v30

    if-ltz v3, :cond_4

    aget-wide v42, v6, v11

    cmpg-double v3, v42, v30

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    aget-wide v44, v29, v8

    aget-wide v7, v29, v2

    aget-wide v46, v29, v11

    mul-double v44, v44, v38

    mul-double v7, v7, v40

    add-double v7, v7, v44

    mul-double v46, v46, v42

    add-double v46, v46, v7

    cmpg-double v2, v46, v30

    if-gtz v2, :cond_5

    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/4 v2, 0x4

    if-eq v13, v2, :cond_7

    sub-double v7, v46, v20

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v38, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v2, v11, v38

    if-gez v2, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    mul-double/2addr v7, v14

    mul-double v46, v46, v22

    div-double v7, v7, v46

    sub-double/2addr v14, v7

    const/4 v2, 0x1

    add-int/2addr v13, v2

    move-wide/from16 v8, v34

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_4
    aget-wide v3, v6, v0

    const-wide v0, 0x405900a3d70a3d71L    # 100.01

    cmpl-double v5, v3, v0

    if-gtz v5, :cond_4

    aget-wide v7, v6, v2

    cmpl-double v5, v7, v0

    if-gtz v5, :cond_4

    const/4 v5, 0x2

    aget-wide v7, v6, v5

    cmpl-double v0, v7, v0

    if-lez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v3, v4}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v0

    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v1

    aget-wide v6, v6, v5

    invoke-static {v6, v7}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v0, v4

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x8

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    or-int/2addr v0, v1

    goto :goto_5

    :cond_9
    move-wide/from16 v34, v8

    goto :goto_3

    :goto_5
    if-eqz v0, :cond_a

    goto/16 :goto_17

    :cond_a
    const/4 v0, 0x3

    new-array v1, v0, [D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v9, 0x0

    aput-wide v4, v1, v9

    const/4 v3, 0x1

    aput-wide v4, v1, v3

    const/4 v0, 0x2

    aput-wide v4, v1, v0

    move-object v2, v1

    move v5, v3

    move v4, v9

    move v6, v4

    move-wide/from16 v7, v30

    move-wide v10, v7

    :goto_6
    const/16 v12, 0xc

    if-ge v6, v12, :cond_17

    aget-wide v14, v29, v9

    aget-wide v16, v29, v3

    aget-wide v18, v29, v0

    const/4 v12, 0x4

    rem-int/lit8 v9, v6, 0x4

    if-gt v9, v3, :cond_b

    move-wide/from16 v24, v30

    goto :goto_7

    :cond_b
    move-wide/from16 v24, v32

    :goto_7
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_c

    move-wide/from16 v26, v30

    goto :goto_8

    :cond_c
    move-wide/from16 v26, v32

    :goto_8
    if-ge v6, v12, :cond_e

    mul-double v16, v16, v24

    sub-double v16, v20, v16

    mul-double v18, v18, v26

    sub-double v16, v16, v18

    div-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Lcom/google/ux/material/libmonet/hct/HctSolver;->isBounded(D)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    new-array v14, v0, [D

    const/4 v9, 0x0

    aput-wide v16, v14, v9

    const/4 v3, 0x1

    aput-wide v24, v14, v3

    const/4 v15, 0x2

    aput-wide v26, v14, v15

    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_d
    const/4 v0, 0x3

    new-array v14, v0, [D

    fill-array-data v14, :array_0

    goto :goto_9

    :cond_e
    const/4 v0, 0x3

    const/16 v13, 0x8

    if-ge v6, v13, :cond_10

    mul-double v14, v14, v26

    sub-double v14, v20, v14

    mul-double v18, v18, v24

    sub-double v14, v14, v18

    div-double v14, v14, v16

    invoke-static {v14, v15}, Lcom/google/ux/material/libmonet/hct/HctSolver;->isBounded(D)Z

    move-result v16

    if-eqz v16, :cond_f

    new-array v3, v0, [D

    const/4 v9, 0x0

    aput-wide v26, v3, v9

    const/16 v16, 0x1

    aput-wide v14, v3, v16

    const/4 v14, 0x2

    aput-wide v24, v3, v14

    move-object v14, v3

    goto :goto_9

    :cond_f
    new-array v14, v0, [D

    fill-array-data v14, :array_1

    goto :goto_9

    :cond_10
    mul-double v14, v14, v24

    sub-double v14, v20, v14

    mul-double v16, v16, v26

    sub-double v14, v14, v16

    div-double v14, v14, v18

    invoke-static {v14, v15}, Lcom/google/ux/material/libmonet/hct/HctSolver;->isBounded(D)Z

    move-result v3

    if-eqz v3, :cond_11

    new-array v3, v0, [D

    const/4 v9, 0x0

    aput-wide v24, v3, v9

    const/16 v16, 0x1

    aput-wide v26, v3, v16

    move-object/from16 v16, v3

    const/16 v17, 0x2

    aput-wide v14, v16, v17

    move-object/from16 v14, v16

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    new-array v14, v0, [D

    fill-array-data v14, :array_2

    :goto_a
    aget-wide v15, v14, v9

    cmpg-double v0, v15, v30

    if-gez v0, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {v14}, Lcom/google/ux/material/libmonet/hct/HctSolver;->hueOf([D)D

    move-result-wide v15

    if-nez v4, :cond_13

    move-object v1, v14

    move-object v2, v1

    move-wide v7, v15

    move-wide v10, v7

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_e

    :cond_13
    if-nez v5, :cond_15

    move-wide/from16 p0, v7

    move-wide/from16 p2, v15

    move-wide/from16 p4, v10

    invoke-static/range {p0 .. p5}, Lcom/google/ux/material/libmonet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    :goto_c
    move-wide/from16 p0, v7

    move-wide/from16 p2, v34

    move-wide/from16 p4, v15

    invoke-static/range {p0 .. p5}, Lcom/google/ux/material/libmonet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v2, v14

    move-wide v10, v15

    :goto_d
    const/4 v0, 0x1

    const/4 v5, 0x0

    goto :goto_e

    :cond_16
    move-object v1, v14

    move-wide v7, v15

    goto :goto_d

    :goto_e
    add-int/2addr v6, v0

    move v3, v0

    const/4 v0, 0x2

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_17
    move v0, v3

    filled-new-array {v1, v2}, [[D

    move-result-object v1

    const/4 v2, 0x0

    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/ux/material/libmonet/hct/HctSolver;->hueOf([D)D

    move-result-wide v5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    :goto_f
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1c

    aget-wide v7, v4, v0

    aget-wide v10, v1, v0

    cmpl-double v2, v7, v10

    if-eqz v2, :cond_1b

    cmpg-double v2, v7, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-gez v2, :cond_18

    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/hct/HctSolver;->trueDelinearized(D)D

    move-result-wide v7

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/hct/HctSolver;->trueDelinearized(D)D

    move-result-wide v7

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    :goto_10
    double-to-int v7, v7

    goto :goto_11

    :cond_18
    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/hct/HctSolver;->trueDelinearized(D)D

    move-result-wide v7

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/hct/HctSolver;->trueDelinearized(D)D

    move-result-wide v7

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    goto :goto_10

    :goto_11
    const/4 v8, 0x0

    :goto_12
    const/16 v10, 0x8

    if-ge v8, v10, :cond_1b

    sub-int v10, v7, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v3, 0x1

    if-gt v10, v3, :cond_19

    goto :goto_14

    :cond_19
    add-int v10, v2, v7

    int-to-double v10, v10

    div-double v10, v10, v22

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    sget-object v11, Lcom/google/ux/material/libmonet/hct/HctSolver;->CRITICAL_PLANES:[D

    aget-wide v11, v11, v10

    aget-wide v14, v4, v0

    aget-wide v16, v1, v0

    sub-double/2addr v11, v14

    sub-double v16, v16, v14

    div-double v11, v11, v16

    const/4 v9, 0x0

    aget-wide v14, v4, v9

    aget-wide v16, v1, v9

    sub-double v16, v16, v14

    mul-double v16, v16, v11

    add-double v16, v16, v14

    const/4 v3, 0x1

    aget-wide v14, v4, v3

    aget-wide v18, v1, v3

    sub-double v18, v18, v14

    mul-double v18, v18, v11

    add-double v18, v18, v14

    const/4 v14, 0x2

    aget-wide v20, v4, v14

    aget-wide v24, v1, v14

    sub-double v24, v24, v20

    mul-double v24, v24, v11

    add-double v24, v24, v20

    const/4 v11, 0x3

    new-array v12, v11, [D

    const/4 v9, 0x0

    aput-wide v16, v12, v9

    aput-wide v18, v12, v3

    aput-wide v24, v12, v14

    invoke-static {v12}, Lcom/google/ux/material/libmonet/hct/HctSolver;->hueOf([D)D

    move-result-wide v14

    move-wide/from16 p0, v5

    move-wide/from16 p2, v34

    move-wide/from16 p4, v14

    invoke-static/range {p0 .. p5}, Lcom/google/ux/material/libmonet/hct/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v11

    if-eqz v11, :cond_1a

    move v7, v10

    move-object v1, v12

    goto :goto_13

    :cond_1a
    move v2, v10

    move-object v4, v12

    move-wide v5, v14

    :goto_13
    add-int/2addr v8, v3

    goto :goto_12

    :cond_1b
    :goto_14
    const/4 v3, 0x1

    add-int/2addr v0, v3

    goto/16 :goto_f

    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x1

    aget-wide v5, v4, v0

    aget-wide v7, v1, v0

    add-double/2addr v5, v7

    div-double v5, v5, v22

    aget-wide v7, v4, v3

    aget-wide v10, v1, v3

    add-double/2addr v7, v10

    div-double v7, v7, v22

    const/4 v0, 0x2

    aget-wide v10, v4, v0

    aget-wide v1, v1, v0

    add-double/2addr v10, v1

    div-double v10, v10, v22

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide v5, v1, v2

    aput-wide v7, v1, v3

    aput-wide v10, v1, v0

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v2

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v3

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v0

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    :goto_15
    or-int/2addr v0, v1

    goto :goto_17

    :cond_1d
    :goto_16
    invoke-static/range {p4 .. p5}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->yFromLstar(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->delinearized(D)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    const/16 v2, 0x8

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    goto :goto_15

    :goto_17
    new-instance v1, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-direct {v1, v0}, Lcom/google/ux/material/libmonet/hct/Hct;-><init>(I)V

    return-object v1

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static fromInt(I)Lcom/google/ux/material/libmonet/hct/Hct;
    .locals 1

    new-instance v0, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-direct {v0, p0}, Lcom/google/ux/material/libmonet/hct/Hct;-><init>(I)V

    return-object v0
.end method
