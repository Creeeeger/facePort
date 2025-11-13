.class public final Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field public final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v8, v7

    if-ge v4, v8, :cond_18

    aget v8, p1, v4

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v8, :cond_5

    if-eq v8, v3, :cond_4

    const/4 v12, 0x2

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_0

    goto :goto_3

    :cond_0
    move v6, v9

    goto :goto_3

    :cond_1
    move v6, v10

    goto :goto_3

    :cond_2
    if-ne v5, v3, :cond_4

    goto :goto_2

    :goto_1
    move v6, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v12

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_1

    :cond_5
    move v6, v11

    :goto_3
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-wide v12, v1, v4

    add-int/lit8 v14, v4, 0x1

    move-wide/from16 v16, v12

    aget-wide v11, v1, v14

    aget-object v13, p3, v4

    aget-wide v9, v13, v2

    aget-wide v0, v13, v3

    aget-object v13, p3, v14

    move/from16 v20, v14

    aget-wide v14, v13, v2

    move/from16 v22, v4

    move/from16 v23, v5

    aget-wide v4, v13, v3

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    sub-double v2, v14, v9

    move-wide/from16 v24, v14

    sub-double v13, v4, v0

    const-wide/16 v26, 0x0

    const/4 v15, 0x1

    if-eq v6, v15, :cond_a

    const/4 v15, 0x4

    if-eq v6, v15, :cond_8

    const/4 v15, 0x5

    if-eq v6, v15, :cond_6

    const/4 v15, 0x0

    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    :goto_4
    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    cmpg-double v18, v13, v26

    if-gez v18, :cond_7

    const/4 v15, 0x1

    :cond_7
    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    goto :goto_4

    :cond_8
    cmpl-double v15, v13, v26

    if-lez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    goto :goto_4

    :cond_a
    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    :goto_6
    iput-wide v9, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iput-wide v11, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr v11, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v11

    iput-wide v9, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    move-object/from16 v16, v7

    const/4 v7, 0x3

    if-ne v7, v6, :cond_b

    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    :cond_b
    iget-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-nez v15, :cond_c

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide v30, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v15, v28, v30

    if-ltz v15, :cond_c

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    cmpg-double v15, v28, v30

    if-gez v15, :cond_d

    :cond_c
    move-object v7, v8

    const/4 v8, 0x1

    goto/16 :goto_10

    :cond_d
    const/16 v9, 0x65

    new-array v9, v9, [D

    iput-object v9, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    iget-boolean v9, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v9, :cond_e

    const/4 v11, -0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x1

    :goto_7
    int-to-double v11, v11

    mul-double/2addr v11, v2

    iput-wide v11, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    if-eqz v9, :cond_f

    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    const/4 v11, -0x1

    :goto_8
    int-to-double v11, v11

    mul-double/2addr v13, v11

    iput-wide v13, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    if-eqz v9, :cond_10

    move-wide/from16 v11, v24

    goto :goto_9

    :cond_10
    move-wide/from16 v11, v18

    :goto_9
    iput-wide v11, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    if-eqz v9, :cond_11

    move-wide v11, v0

    goto :goto_a

    :cond_11
    move-wide v11, v4

    :goto_a
    iput-wide v11, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    sub-double/2addr v0, v4

    move-wide/from16 v11, v26

    move-wide v13, v11

    move-wide/from16 v17, v13

    const/4 v4, 0x0

    :goto_b
    sget-object v5, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->sOurPercent:[D

    const/16 v9, 0x5b

    const/16 v15, 0x5a

    if-ge v4, v9, :cond_13

    const-wide v24, 0x4056800000000000L    # 90.0

    move-object/from16 v21, v8

    int-to-double v7, v4

    mul-double v7, v7, v24

    move-wide/from16 v24, v11

    int-to-double v10, v15

    div-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v9, v2

    mul-double/2addr v7, v0

    if-lez v4, :cond_12

    sub-double v11, v9, v13

    sub-double v13, v7, v17

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    add-double v11, v11, v24

    aput-wide v11, v5, v4

    goto :goto_c

    :cond_12
    move-wide/from16 v11, v24

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v17, v7

    move-wide v13, v9

    move-object/from16 v8, v21

    goto :goto_b

    :cond_13
    move-object v7, v8

    iput-wide v11, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v9, :cond_14

    aget-wide v1, v5, v0

    div-double/2addr v1, v11

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :goto_e
    iget-object v1, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v2, v1

    if-ge v0, v2, :cond_17

    int-to-double v2, v0

    array-length v4, v1

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    int-to-double v8, v4

    div-double/2addr v2, v8

    invoke-static {v5, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-ltz v4, :cond_15

    int-to-double v2, v4

    int-to-double v8, v15

    div-double/2addr v2, v8

    aput-wide v2, v1, v0

    const/4 v8, -0x1

    goto :goto_f

    :cond_15
    const/4 v8, -0x1

    if-ne v4, v8, :cond_16

    aput-wide v26, v1, v0

    goto :goto_f

    :cond_16
    neg-int v4, v4

    add-int/lit8 v9, v4, -0x2

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    int-to-double v10, v9

    aget-wide v12, v5, v9

    sub-double/2addr v2, v12

    aget-wide v18, v5, v4

    sub-double v18, v18, v12

    div-double v2, v2, v18

    add-double/2addr v2, v10

    int-to-double v9, v15

    div-double/2addr v2, v9

    aput-wide v2, v1, v0

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_17
    iget-wide v0, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v2, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    goto :goto_11

    :goto_10
    iput-boolean v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    move-wide/from16 v26, v9

    move-wide/from16 v8, v18

    iput-wide v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    move-wide/from16 v8, v24

    iput-wide v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    iput-wide v0, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    iput-wide v4, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iput-wide v0, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    mul-double v0, v0, v26

    iput-wide v0, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    div-double/2addr v2, v11

    iput-wide v2, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    div-double/2addr v13, v11

    iput-wide v13, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    :goto_11
    aput-object v7, v16, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, v20

    move/from16 v5, v23

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_18
    return-void
.end method


# virtual methods
.method public final getPos(D)D
    .locals 5

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    sub-double/2addr p1, v2

    iget-boolean v4, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v1

    aget-object p0, p0, v0

    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    return-wide p1

    :cond_0
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v3

    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    return-wide v3

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr p1, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v3, p0, v2

    invoke-virtual {v3, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v0

    aget-object p0, p0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    mul-double/2addr p1, v2

    add-double/2addr p1, v0

    return-wide p1

    :cond_2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_4

    iget-boolean v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p0

    return-wide p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public final getPos(D[D)V
    .locals 10

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v4, p1, v2

    const/4 v5, 0x1

    if-gez v4, :cond_1

    sub-double/2addr p1, v2

    iget-boolean v4, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    aget-object v1, p0, v0

    iget-wide v8, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    mul-double/2addr v8, p1

    add-double/2addr v8, v6

    aput-wide v8, p3, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    aget-object p0, p0, v0

    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    aput-wide p1, p3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v3

    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    aput-wide v3, p3, v0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    aput-wide v3, p3, v5

    :goto_0
    return-void

    :cond_1
    array-length v1, p0

    sub-int/2addr v1, v5

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_3

    array-length v1, p0

    sub-int/2addr v1, v5

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double v3, p1, v1

    array-length v6, p0

    sub-int/2addr v6, v5

    aget-object v7, p0, v6

    iget-boolean v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide p1

    aget-object v7, p0, v6

    iget-wide v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    mul-double/2addr v8, v3

    add-double/2addr v8, p1

    aput-wide v8, p3, v0

    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p1

    aget-object p0, p0, v6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    mul-double/2addr v3, v0

    add-double/2addr v3, p1

    aput-wide v3, p3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v7, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object p1, p0, v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    aget-object v1, p0, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v1

    mul-double/2addr v1, v3

    add-double/2addr v1, p1

    aput-wide v1, p3, v0

    aget-object p1, p0, v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p1

    aget-object p0, p0, v6

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v0

    mul-double/2addr v0, v3

    add-double/2addr v0, p1

    aput-wide v0, p3, v5

    :goto_1
    return-void

    :cond_3
    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_6

    aget-object v2, p0, v1

    iget-wide v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_5

    iget-boolean v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p0

    aput-wide p0, p3, v5

    return-void

    :cond_4
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object p1, p0, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    aput-wide p1, p3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p0

    aput-wide p0, p3, v5

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final getPos(D[F)V
    .locals 10

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v4, p1, v2

    const/4 v5, 0x1

    if-gez v4, :cond_1

    sub-double/2addr p1, v2

    iget-boolean v4, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    aget-object v1, p0, v0

    iget-wide v8, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    mul-double/2addr v8, p1

    add-double/2addr v8, v6

    double-to-float v4, v8

    aput v4, p3, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    aget-object p0, p0, v0

    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    double-to-float p0, p1

    aput p0, p3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v3

    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    double-to-float v1, v3

    aput v1, p3, v0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    double-to-float p0, v3

    aput p0, p3, v5

    :goto_0
    return-void

    :cond_1
    array-length v1, p0

    sub-int/2addr v1, v5

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_3

    array-length v1, p0

    sub-int/2addr v1, v5

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double v3, p1, v1

    array-length v6, p0

    sub-int/2addr v6, v5

    aget-object v7, p0, v6

    iget-boolean v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide p1

    aget-object v7, p0, v6

    iget-wide v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    mul-double/2addr v8, v3

    add-double/2addr v8, p1

    double-to-float p1, v8

    aput p1, p3, v0

    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p1

    aget-object p0, p0, v6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    mul-double/2addr v3, v0

    add-double/2addr v3, p1

    double-to-float p0, v3

    aput p0, p3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v7, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object p1, p0, v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    aget-object p0, p0, v6

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p3, v5

    :goto_1
    return-void

    :cond_3
    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_6

    aget-object v2, p0, v1

    iget-wide v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_5

    iget-boolean v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p3, v5

    return-void

    :cond_4
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object p1, p0, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p3, v5

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final getSlope(D[D)V
    .locals 7

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v3, p1, v1

    const/4 v4, 0x1

    if-gez v3, :cond_0

    move-wide p1, v1

    goto :goto_0

    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v4

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v4

    aget-object p1, p0, p1

    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-wide v5, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_3

    iget-boolean v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-eqz v3, :cond_2

    iget-wide p0, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    aput-wide p0, p3, v0

    iget-wide p0, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    aput-wide p0, p3, v4

    return-void

    :cond_2
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    aget-object p1, p0, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide p1

    aput-wide p1, p3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide p0

    aput-wide p0, p3, v4

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final getTimePoints()[D
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    return-object p0
.end method
