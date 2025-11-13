.class public final Lcom/google/ux/material/libmonet/hct/ViewingConditions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT:Lcom/google/ux/material/libmonet/hct/ViewingConditions;


# instance fields
.field public final aw:D

.field public final c:D

.field public final fl:D

.field public final flRoot:D

.field public final n:D

.field public final nbb:D

.field public final nc:D

.field public final ncb:D

.field public final rgbD:[D

.field public final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 45

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/google/ux/material/libmonet/utils/ColorUtils;->WHITE_POINT_D65:[D

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    invoke-static {v5, v6}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->yFromLstar(D)D

    move-result-wide v7

    const-wide v9, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    sget-object v13, Lcom/google/ux/material/libmonet/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    aget-wide v14, v4, v3

    aget-object v16, v13, v3

    aget-wide v17, v16, v3

    mul-double v17, v17, v14

    aget-wide v19, v4, v2

    aget-wide v21, v16, v2

    mul-double v21, v21, v19

    add-double v21, v21, v17

    aget-wide v17, v4, v1

    aget-wide v23, v16, v1

    mul-double v23, v23, v17

    add-double v23, v23, v21

    aget-object v16, v13, v2

    aget-wide v21, v16, v3

    mul-double v21, v21, v14

    aget-wide v25, v16, v2

    mul-double v25, v25, v19

    add-double v25, v25, v21

    aget-wide v21, v16, v1

    mul-double v21, v21, v17

    add-double v21, v21, v25

    aget-object v13, v13, v1

    aget-wide v25, v13, v3

    mul-double v14, v14, v25

    aget-wide v25, v13, v2

    mul-double v19, v19, v25

    add-double v19, v19, v14

    aget-wide v13, v13, v1

    mul-double v17, v17, v13

    add-double v17, v17, v19

    neg-double v13, v7

    const-wide/high16 v15, 0x4045000000000000L    # 42.0

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4057000000000000L    # 92.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    const-wide v15, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v13, v13, v36

    const-wide/16 v19, 0x0

    cmpg-double v25, v13, v19

    if-gez v25, :cond_0

    move-wide/from16 v13, v19

    goto :goto_0

    :cond_0
    cmpl-double v19, v13, v15

    if-lez v19, :cond_1

    move-wide v13, v15

    :cond_1
    :goto_0
    div-double v19, v9, v23

    mul-double v19, v19, v13

    add-double v19, v19, v15

    sub-double v19, v19, v13

    div-double v25, v9, v21

    mul-double v25, v25, v13

    add-double v25, v25, v15

    sub-double v25, v25, v13

    div-double v27, v9, v17

    mul-double v27, v27, v13

    add-double v27, v27, v15

    sub-double v27, v27, v13

    new-array v13, v0, [D

    move-object/from16 v38, v13

    aput-wide v19, v13, v3

    aput-wide v25, v13, v2

    aput-wide v27, v13, v1

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    mul-double v19, v19, v7

    add-double v25, v19, v15

    div-double v25, v15, v25

    mul-double v27, v25, v25

    mul-double v27, v27, v25

    mul-double v27, v27, v25

    sub-double v15, v15, v27

    mul-double v27, v27, v7

    mul-double/2addr v11, v15

    mul-double/2addr v11, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    add-double v7, v7, v27

    move-wide/from16 v39, v7

    invoke-static {v5, v6}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->yFromLstar(D)D

    move-result-wide v5

    aget-wide v11, v4, v2

    div-double/2addr v5, v11

    move-wide/from16 v26, v5

    const-wide v11, 0x3ff7ae147ae147aeL    # 1.48

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    add-double v43, v14, v11

    const-wide v11, 0x3fc999999999999aL    # 0.2

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v11, 0x3fe7333333333333L    # 0.725

    div-double/2addr v11, v4

    move-wide/from16 v30, v11

    move-wide/from16 v32, v11

    aget-wide v4, v13, v3

    mul-double/2addr v4, v7

    mul-double v4, v4, v23

    div-double/2addr v4, v9

    const-wide v14, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aget-wide v19, v13, v2

    mul-double v19, v19, v7

    mul-double v19, v19, v21

    div-double v2, v19, v9

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget-wide v19, v13, v1

    mul-double v19, v19, v7

    mul-double v19, v19, v17

    div-double v9, v19, v9

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    new-array v13, v0, [D

    const/4 v14, 0x0

    aput-wide v4, v13, v14

    const/4 v4, 0x1

    aput-wide v2, v13, v4

    aput-wide v9, v13, v1

    aget-wide v2, v13, v14

    const-wide/high16 v5, 0x4079000000000000L    # 400.0

    mul-double v9, v2, v5

    const-wide v14, 0x403b2147ae147ae1L    # 27.13

    add-double/2addr v2, v14

    div-double/2addr v9, v2

    aget-wide v2, v13, v4

    mul-double v17, v2, v5

    add-double/2addr v2, v14

    div-double v17, v17, v2

    aget-wide v2, v13, v1

    mul-double/2addr v5, v2

    add-double/2addr v2, v14

    div-double/2addr v5, v2

    new-array v0, v0, [D

    const/4 v2, 0x0

    aput-wide v9, v0, v2

    aput-wide v17, v0, v4

    aput-wide v5, v0, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    aget-wide v2, v0, v2

    mul-double/2addr v2, v5

    aget-wide v4, v0, v4

    add-double/2addr v2, v4

    const-wide v4, 0x3fa999999999999aL    # 0.05

    aget-wide v0, v0, v1

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    mul-double v28, v0, v11

    new-instance v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;

    move-object/from16 v25, v0

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v41

    const-wide v34, 0x3fe6147ae147ae14L    # 0.69

    invoke-direct/range {v25 .. v44}, Lcom/google/ux/material/libmonet/hct/ViewingConditions;-><init>(DDDDDD[DDDD)V

    sput-object v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->DEFAULT:Lcom/google/ux/material/libmonet/hct/ViewingConditions;

    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->n:D

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->aw:D

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->nbb:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->ncb:D

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->c:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->nc:D

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->rgbD:[D

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->fl:D

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->flRoot:D

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/ux/material/libmonet/hct/ViewingConditions;->z:D

    return-void
.end method
