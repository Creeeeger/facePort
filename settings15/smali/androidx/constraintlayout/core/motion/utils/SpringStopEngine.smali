.class public final Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# instance fields
.field public mBoundaryMode:I

.field public mDamping:D

.field public mLastTime:F

.field public mMass:F

.field public mPos:F

.field public mStiffness:D

.field public mStopThreshold:F

.field public mTargetPos:D

.field public mV:F


# virtual methods
.method public final getInterpolation(F)F
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    sub-float v2, v1, v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    move-object v4, v0

    move v0, v1

    goto/16 :goto_1

    :cond_0
    iget-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    iget-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    float-to-double v8, v8

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    div-double/2addr v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v8

    double-to-int v8, v10

    int-to-double v9, v8

    div-double/2addr v2, v9

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v11, v10

    iget-wide v13, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    sub-double v15, v11, v13

    move/from16 v17, v8

    move/from16 v18, v9

    neg-double v8, v4

    mul-double/2addr v8, v15

    iget v15, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    move-wide/from16 v19, v4

    float-to-double v4, v15

    mul-double v21, v6, v4

    sub-double v8, v8, v21

    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    float-to-double v0, v1

    div-double/2addr v8, v0

    mul-double/2addr v8, v2

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v8, v8, v21

    add-double/2addr v8, v4

    mul-double v23, v2, v8

    div-double v23, v23, v21

    add-double v23, v23, v11

    sub-double v11, v23, v13

    neg-double v11, v11

    mul-double v11, v11, v19

    mul-double/2addr v8, v6

    sub-double/2addr v11, v8

    div-double/2addr v11, v0

    mul-double/2addr v11, v2

    div-double v0, v11, v21

    add-double/2addr v0, v4

    double-to-float v4, v11

    add-float/2addr v15, v4

    move-object/from16 v4, p0

    iput v15, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    mul-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v10, v0

    iput v10, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    if-lez v0, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_1

    and-int/lit8 v1, v0, 0x1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    neg-float v1, v10

    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    neg-float v1, v15

    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    :cond_1
    iget v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    and-int/lit8 v0, v0, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    neg-float v0, v0

    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    :cond_2
    add-int/lit8 v9, v18, 0x1

    move/from16 v1, p1

    move-object v0, v4

    move/from16 v8, v17

    move-wide/from16 v4, v19

    goto :goto_0

    :cond_3
    move-object v4, v0

    move/from16 v0, p1

    :goto_1
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    double-to-float v0, v0

    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    :cond_4
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    return v0
.end method

.method public final getVelocity()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isStopped()Z
    .locals 8

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v0, v0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    float-to-double v4, v4

    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    float-to-double v6, v6

    mul-double/2addr v4, v4

    mul-double/2addr v4, v6

    mul-double v6, v2, v0

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
