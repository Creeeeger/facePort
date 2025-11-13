.class public final Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sOurPercent:[D


# instance fields
.field public final mArcDistance:D

.field public final mArcVelocity:D

.field public final mEllipseA:D

.field public final mEllipseB:D

.field public final mEllipseCenterX:D

.field public final mEllipseCenterY:D

.field public final mLinear:Z

.field public final mLut:[D

.field public final mOneOverDeltaTime:D

.field public final mTime1:D

.field public final mTime2:D

.field public mTmpCosAngle:D

.field public mTmpSinAngle:D

.field public final mVertical:Z

.field public final mX1:D

.field public final mX2:D

.field public final mY1:D

.field public final mY2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->sOurPercent:[D

    return-void
.end method

.method public constructor <init>(IDDDDDD)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    sub-double v14, v10, v6

    sub-double v10, v12, v8

    const-wide/16 v17, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/4 v7, 0x4

    if-eq v1, v7, :cond_2

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    cmpg-double v16, v10, v17

    if-gez v16, :cond_1

    move v7, v6

    :cond_1
    iput-boolean v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    goto :goto_1

    :cond_2
    cmpl-double v7, v10, v17

    if-lez v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    goto :goto_1

    :cond_4
    iput-boolean v6, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    :goto_1
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iput-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v21, v4, v2

    div-double v6, v19, v21

    iput-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    const/4 v2, 0x3

    if-ne v2, v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    :cond_5
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    if-nez v1, :cond_6

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v19, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v1, v19

    if-ltz v1, :cond_6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v19

    if-gez v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_7
    const/16 v1, 0x65

    new-array v1, v1, [D

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v1, :cond_8

    const/4 v3, -0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    :goto_2
    int-to-double v3, v3

    mul-double/2addr v3, v14

    iput-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, -0x1

    :goto_3
    int-to-double v3, v3

    mul-double/2addr v10, v3

    iput-wide v10, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    if-eqz v1, :cond_a

    move-wide/from16 v3, p10

    goto :goto_4

    :cond_a
    move-wide/from16 v3, p6

    :goto_4
    iput-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    if-eqz v1, :cond_b

    move-wide v3, v8

    goto :goto_5

    :cond_b
    move-wide v3, v12

    :goto_5
    iput-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    sub-double v3, v8, v12

    move-wide/from16 v5, v17

    move-wide v7, v5

    move-wide v9, v7

    const/4 v1, 0x0

    :goto_6
    sget-object v11, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->sOurPercent:[D

    const/16 v12, 0x5b

    const/16 v13, 0x5a

    if-ge v1, v12, :cond_d

    const-wide v19, 0x4056800000000000L    # 90.0

    move-wide/from16 p2, v3

    int-to-double v2, v1

    mul-double v2, v2, v19

    int-to-double v12, v13

    div-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v12, v14

    move-wide/from16 v19, p2

    mul-double v3, v19, v2

    if-lez v1, :cond_c

    sub-double v7, v12, v7

    sub-double v9, v3, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    aput-wide v5, v11, v1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move-wide v9, v3

    move-wide v7, v12

    move-wide/from16 v3, v19

    goto :goto_6

    :cond_d
    iput-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v12, :cond_e

    aget-wide v2, v11, v1

    div-double/2addr v2, v5

    aput-wide v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v14, 0x0

    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v2, v1

    if-ge v14, v2, :cond_11

    int-to-double v2, v14

    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v11, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-ltz v4, :cond_f

    int-to-double v2, v4

    int-to-double v4, v13

    div-double/2addr v2, v4

    aput-wide v2, v1, v14

    const/4 v5, -0x1

    goto :goto_9

    :cond_f
    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    aput-wide v17, v1, v14

    goto :goto_9

    :cond_10
    neg-int v4, v4

    add-int/lit8 v6, v4, -0x2

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    int-to-double v7, v6

    aget-wide v9, v11, v6

    sub-double/2addr v2, v9

    aget-wide v15, v11, v4

    sub-double/2addr v15, v9

    div-double/2addr v2, v15

    add-double/2addr v2, v7

    int-to-double v6, v13

    div-double/2addr v2, v6

    aput-wide v2, v1, v14

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_11
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    return-void

    :goto_a
    iput-boolean v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLinear:Z

    move-wide/from16 v1, p6

    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    move-wide/from16 v1, p10

    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    iput-wide v8, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    iput-wide v12, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    mul-double/2addr v1, v6

    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    sub-double v1, v4, p2

    div-double/2addr v14, v1

    iput-wide v14, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    sub-double v1, v4, p2

    div-double/2addr v10, v1

    iput-wide v10, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    return-void
.end method


# virtual methods
.method public final getDX()D
    .locals 6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v4, v2

    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz p0, :cond_0

    neg-double v0, v0

    :cond_0
    mul-double/2addr v0, v4

    return-wide v0
.end method

.method public final getDY()D
    .locals 6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double/2addr v4, v0

    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz p0, :cond_0

    neg-double v0, v2

    mul-double/2addr v0, v4

    goto :goto_0

    :cond_0
    mul-double v0, v2, v4

    :goto_0
    return-wide v0
.end method

.method public final getLinearX(D)D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getLinearY(D)D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getX()D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getY()D
    .locals 4

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final setPoint(D)V
    .locals 4

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, p1

    const-wide/16 p1, 0x0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    int-to-double v2, p2

    sub-double/2addr v0, v2

    aget-wide v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-wide p1, p1, p2

    sub-double/2addr p1, v2

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    :goto_1
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    return-void
.end method
