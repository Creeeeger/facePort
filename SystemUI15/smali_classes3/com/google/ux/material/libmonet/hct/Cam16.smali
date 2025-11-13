.class public final Lcom/google/ux/material/libmonet/hct/Cam16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final XYZ_TO_CAM16RGB:[[D


# instance fields
.field public final chroma:D

.field public final hue:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    filled-new-array {v1, v2, v0}, [[D

    move-result-object v0

    sput-object v0, Lcom/google/ux/material/libmonet/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data
.end method

.method private constructor <init>(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/Cam16;->hue:D

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/Cam16;->chroma:D

    return-void
.end method

.method public static fromInt(I)Lcom/google/ux/material/libmonet/hct/Cam16;
    .locals 40

    move/from16 v0, p0

    sget-object v1, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->DEFAULT:Lcom/google/ux/material/libmonet/hct/ViewingConditions;

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {v2}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v4

    invoke-static {v3}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v2

    invoke-static {v0}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v6

    const-wide v8, 0x3fda63c2e8477c96L    # 0.41233895

    mul-double/2addr v8, v4

    const-wide v10, 0x3fd6e341ae4b2c79L    # 0.35762064

    mul-double/2addr v10, v2

    add-double/2addr v10, v8

    const-wide v8, 0x3fc71af7273e5d5eL    # 0.18051042

    mul-double/2addr v8, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v10, v4

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v2

    add-double/2addr v12, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v6

    add-double/2addr v10, v12

    const-wide v12, 0x3f93c8fde0401c25L    # 0.01932141

    mul-double/2addr v4, v12

    const-wide v12, 0x3fbe818525c434ceL    # 0.11916382

    mul-double/2addr v2, v12

    add-double/2addr v2, v4

    const-wide v4, 0x3fee693974c0c730L    # 0.95034478

    mul-double/2addr v6, v4

    add-double/2addr v6, v2

    sget-object v0, Lcom/google/ux/material/libmonet/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aget-wide v4, v3, v2

    mul-double/2addr v4, v8

    const/4 v12, 0x1

    aget-wide v13, v3, v12

    mul-double/2addr v13, v10

    add-double/2addr v13, v4

    const/4 v4, 0x2

    aget-wide v15, v3, v4

    mul-double/2addr v15, v6

    add-double/2addr v15, v13

    aget-object v3, v0, v12

    aget-wide v13, v3, v2

    mul-double/2addr v13, v8

    aget-wide v17, v3, v12

    mul-double v17, v17, v10

    add-double v17, v17, v13

    aget-wide v13, v3, v4

    mul-double/2addr v13, v6

    add-double v13, v13, v17

    aget-object v0, v0, v4

    aget-wide v17, v0, v2

    mul-double v8, v8, v17

    aget-wide v17, v0, v12

    mul-double v10, v10, v17

    add-double/2addr v10, v8

    aget-wide v8, v0, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    iget-object v0, v1, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->rgbD:[D

    aget-wide v2, v0, v2

    mul-double/2addr v2, v15

    aget-wide v8, v0, v12

    mul-double/2addr v8, v13

    aget-wide v4, v0, v4

    mul-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-wide v10, v1, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->fl:D

    mul-double/2addr v6, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v12

    const-wide v14, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    move-object/from16 v18, v1

    div-double v0, v16, v12

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    div-double v10, v16, v12

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    mul-double/2addr v2, v14

    mul-double/2addr v2, v6

    const-wide v16, 0x403b2147ae147ae1L    # 27.13

    add-double v6, v6, v16

    div-double/2addr v2, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    mul-double/2addr v6, v0

    add-double v0, v0, v16

    div-double/2addr v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    mul-double/2addr v0, v14

    mul-double/2addr v0, v10

    add-double v10, v10, v16

    div-double/2addr v0, v10

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    mul-double v8, v2, v4

    const-wide/high16 v10, -0x3fd8000000000000L    # -12.0

    mul-double/2addr v10, v6

    add-double/2addr v10, v8

    add-double/2addr v10, v0

    div-double/2addr v10, v4

    add-double v4, v2, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v14, v0, v8

    sub-double/2addr v4, v14

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    div-double/2addr v4, v14

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    mul-double v16, v2, v14

    mul-double/2addr v6, v14

    add-double v16, v16, v6

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    mul-double v19, v19, v0

    add-double v19, v19, v16

    div-double v19, v19, v14

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v16

    add-double/2addr v2, v6

    add-double/2addr v2, v0

    div-double/2addr v2, v14

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    const-wide v14, 0x4076800000000000L    # 360.0

    if-gez v6, :cond_1

    add-double/2addr v0, v14

    :cond_0
    :goto_0
    move-wide/from16 v22, v0

    goto :goto_1

    :cond_1
    cmpl-double v6, v0, v14

    if-ltz v6, :cond_0

    sub-double/2addr v0, v14

    goto :goto_0

    :goto_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    move-object/from16 v6, v18

    iget-wide v8, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->nbb:D

    mul-double/2addr v2, v8

    iget-wide v7, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->aw:D

    div-double/2addr v2, v7

    iget-wide v14, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->c:D

    iget-wide v12, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->z:D

    mul-double/2addr v12, v14

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v26, v2, v12

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v28, v2, v14

    div-double v12, v26, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    mul-double v30, v30, v28

    add-double/2addr v7, v2

    mul-double v30, v30, v7

    iget-wide v2, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->flRoot:D

    mul-double v28, v30, v2

    const-wide v30, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v9, v22, v30

    if-gez v9, :cond_2

    const-wide v24, 0x4076800000000000L    # 360.0

    add-double v24, v22, v24

    goto :goto_2

    :cond_2
    move-wide/from16 v24, v22

    :goto_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-double v24, v24, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    const-wide v24, 0x400e666666666666L    # 3.8

    add-double v16, v16, v24

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    mul-double v16, v16, v24

    const-wide v24, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double v16, v16, v24

    move-wide/from16 v24, v0

    iget-wide v0, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->nc:D

    mul-double v16, v16, v0

    iget-wide v0, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->ncb:D

    mul-double v16, v16, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    mul-double v0, v0, v16

    const-wide v4, 0x3fd3851eb851eb85L    # 0.305

    add-double v19, v19, v4

    div-double v0, v0, v19

    const-wide v4, 0x3fd28f5c28f5c28fL    # 0.29

    iget-wide v9, v6, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->n:D

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v9, v4

    const-wide v4, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    mul-double v30, v4, v2

    mul-double/2addr v0, v14

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    mul-double v32, v0, v2

    const-wide v0, 0x3ffb333333333334L    # 1.7000000000000002

    mul-double v0, v0, v26

    const-wide v2, 0x3f7cac083126e979L    # 0.007

    mul-double v2, v2, v26

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    div-double v34, v0, v2

    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    mul-double v0, v0, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v0

    const-wide v2, 0x4045ee08fb823ee0L    # 43.859649122807014

    mul-double/2addr v0, v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v36, v2, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v38, v2, v0

    new-instance v0, Lcom/google/ux/material/libmonet/hct/Cam16;

    move-object/from16 v21, v0

    move-wide/from16 v24, v4

    invoke-direct/range {v21 .. v39}, Lcom/google/ux/material/libmonet/hct/Cam16;-><init>(DDDDDDDDD)V

    return-object v0
.end method
