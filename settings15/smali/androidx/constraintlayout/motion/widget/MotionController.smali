.class public final Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

.field public mAttributeInterpolatorCount:[I

.field public mAttributeNames:[Ljava/lang/String;

.field public mAttributesMap:Ljava/util/HashMap;

.field public mCurveFitType:I

.field public mCycleMap:Ljava/util/HashMap;

.field public final mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public mForceMeasure:Z

.field public final mId:I

.field public mInterpolateData:[D

.field public mInterpolateVariables:[I

.field public mInterpolateVelocity:[D

.field public final mKeyList:Ljava/util/ArrayList;

.field public final mMotionPaths:Ljava/util/ArrayList;

.field public mMotionStagger:F

.field public mNoMovement:Z

.field public mPathMotionArc:I

.field public mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field public mQuantizeMotionPhase:F

.field public mQuantizeMotionSteps:I

.field public mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mStaggerOffset:F

.field public mStaggerScale:F

.field public final mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTimeCycleAttributesMap:Ljava/util/HashMap;

.field public mTransformPivotTarget:I

.field public mTransformPivotView:Landroid/view/View;

.field public final mValuesBuff:[F

.field public final mVelocity:[F

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static rotate(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p2, 0x4

    if-eq p0, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p2

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/2addr p0, v1

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_1
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    div-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    div-int/2addr p1, v1

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p2

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p2

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/2addr p0, v1

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    div-int/2addr p1, v1

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final getAdjustedPosition(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v4, 0x7fc00000    # Float.NaN

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v6, :cond_3

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v8, v7, p1

    if-gez v8, :cond_4

    move-object v3, v6

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double p0, p1

    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    if-eqz p2, :cond_7

    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p2, v1

    :cond_7
    move p1, v0

    :cond_8
    return p1
.end method

.method public final getCenter(D[F[F)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    const/4 v4, 0x4

    new-array v5, v4, [D

    new-array v6, v4, [D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    move v14, v8

    :goto_0
    array-length v8, v9

    if-ge v14, v8, :cond_4

    move v8, v12

    move/from16 v18, v13

    aget-wide v12, v5, v14

    double-to-float v12, v12

    move-object v13, v5

    aget-wide v4, v6, v14

    double-to-float v4, v4

    aget v5, v9, v14

    move/from16 v20, v4

    const/4 v4, 0x1

    if-eq v5, v4, :cond_3

    const/4 v4, 0x2

    if-eq v5, v4, :cond_2

    const/4 v4, 0x3

    if-eq v5, v4, :cond_1

    const/4 v4, 0x4

    if-eq v5, v4, :cond_0

    :goto_1
    move v12, v8

    goto :goto_2

    :cond_0
    move/from16 v18, v12

    move/from16 v17, v20

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    move/from16 v16, v20

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    move v11, v12

    move/from16 v7, v20

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    move v10, v12

    move/from16 v15, v20

    goto :goto_1

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object v5, v13

    move/from16 v13, v18

    goto :goto_0

    :cond_4
    move v8, v12

    move/from16 v18, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v16, v16, v4

    add-float v16, v16, v15

    div-float v17, v17, v4

    add-float v17, v17, v7

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_5

    const/4 v5, 0x2

    new-array v6, v5, [F

    new-array v5, v5, [F

    invoke-virtual {v0, v1, v2, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v2, 0x1

    aget v6, v6, v2

    aget v9, v5, v0

    aget v0, v5, v2

    float-to-double v1, v1

    float-to-double v12, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v12

    add-double v19, v19, v1

    div-float v1, v8, v4

    float-to-double v1, v1

    sub-double v1, v19, v1

    double-to-float v1, v1

    float-to-double v5, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v12

    sub-double v5, v5, v19

    div-float v13, v18, v4

    float-to-double v12, v13

    sub-double/2addr v5, v12

    double-to-float v2, v5

    float-to-double v5, v9

    float-to-double v12, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v14, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move v9, v1

    move/from16 v16, v2

    float-to-double v1, v7

    mul-double/2addr v5, v1

    add-double/2addr v5, v14

    double-to-float v5, v5

    float-to-double v6, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    sub-double/2addr v6, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v1

    add-double/2addr v10, v6

    double-to-float v0, v10

    move/from16 v17, v0

    move v10, v9

    move/from16 v11, v16

    move/from16 v16, v5

    :cond_5
    div-float v12, v8, v4

    add-float/2addr v12, v10

    const/4 v0, 0x0

    add-float/2addr v12, v0

    const/4 v1, 0x0

    aput v12, p3, v1

    div-float v13, v18, v4

    add-float/2addr v13, v11

    add-float/2addr v13, v0

    const/4 v0, 0x1

    aput v13, p3, v0

    aput v16, v3, v1

    aput v17, v3, v0

    return-void
.end method

.method public final interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3

    int-to-float v3, v3

    div-float v3, v9, v3

    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    add-float/2addr v2, v5

    rem-float/2addr v2, v9

    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_1

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    float-to-double v5, v2

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v5, v11

    if-lez v2, :cond_2

    move v2, v9

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    :cond_3
    move v11, v2

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline;

    invoke-virtual {v3, v7, v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v1

    move v15, v12

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    if-eqz v2, :cond_5

    move-object v14, v1

    check-cast v14, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    goto :goto_2

    :cond_5
    move v2, v11

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v1

    or-int/2addr v15, v1

    goto :goto_2

    :cond_6
    move-object v14, v1

    move v15, v12

    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    if-eqz v1, :cond_24

    aget-object v1, v1, v12

    float-to-double v4, v11

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v12

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v1, :cond_8

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v10, v9

    if-lez v10, :cond_8

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v4, v5, v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    :cond_8
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    if-nez v1, :cond_1b

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    iget v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v9, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v12, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move/from16 v17, v6

    array-length v6, v1

    if-eqz v6, :cond_9

    iget-object v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v6, v6

    move/from16 v18, v8

    array-length v8, v1

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    aget v8, v1, v8

    if-gt v6, v8, :cond_a

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    new-array v8, v6, [D

    iput-object v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v6, v6, [D

    iput-object v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    goto :goto_3

    :cond_9
    move/from16 v18, v8

    :cond_a
    :goto_3
    iget-object v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    move/from16 v19, v9

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->fill([DD)V

    const/4 v6, 0x0

    :goto_4
    array-length v8, v1

    if-ge v6, v8, :cond_b

    iget-object v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v9, v1, v6

    aget-wide v20, v10, v6

    aput-wide v20, v8, v9

    iget-object v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v20, v2, v6

    aput-wide v20, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    const/high16 v1, 0x7fc00000    # Float.NaN

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v6, v17

    move/from16 v8, v18

    move/from16 v9, v19

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    :goto_5
    iget-object v11, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v0, v11

    move/from16 v22, v3

    if-ge v14, v0, :cond_13

    aget-wide v23, v11, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide/from16 v25, v4

    goto :goto_8

    :cond_c
    iget-object v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v23, v0, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v23, 0x0

    if-eqz v0, :cond_d

    :goto_6
    move-wide/from16 v25, v4

    move-wide/from16 v3, v23

    goto :goto_7

    :cond_d
    iget-object v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v25, v0, v14

    add-double v23, v25, v23

    goto :goto_6

    :goto_7
    double-to-float v3, v3

    iget-object v4, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v4, v4, v14

    double-to-float v4, v4

    const/4 v5, 0x1

    if-eq v14, v5, :cond_12

    const/4 v0, 0x2

    if-eq v14, v0, :cond_11

    const/4 v0, 0x3

    if-eq v14, v0, :cond_10

    const/4 v0, 0x4

    if-eq v14, v0, :cond_f

    const/4 v0, 0x5

    if-eq v14, v0, :cond_e

    goto :goto_8

    :cond_e
    move v1, v3

    goto :goto_8

    :cond_f
    move v6, v3

    move/from16 v19, v4

    goto :goto_8

    :cond_10
    move v12, v3

    move/from16 v18, v4

    goto :goto_8

    :cond_11
    move v9, v3

    move v15, v4

    goto :goto_8

    :cond_12
    move v8, v3

    move v10, v4

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v22

    move-wide/from16 v4, v25

    goto :goto_5

    :cond_13
    move-wide/from16 v25, v4

    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v3, :cond_17

    const/4 v0, 0x2

    new-array v4, v0, [F

    new-array v5, v0, [F

    move v11, v1

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    const/4 v3, 0x0

    aget v14, v4, v3

    const/16 v16, 0x1

    aget v4, v4, v16

    aget v0, v5, v3

    aget v1, v5, v16

    move-object/from16 v23, v13

    float-to-double v13, v14

    float-to-double v7, v8

    move-object v5, v2

    float-to-double v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v7

    add-double v27, v27, v13

    const/high16 v9, 0x40000000    # 2.0f

    div-float v13, v12, v9

    float-to-double v13, v13

    sub-double v13, v27, v13

    double-to-float v13, v13

    move v14, v10

    float-to-double v9, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v27, v27, v7

    sub-double v9, v9, v27

    move/from16 v19, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v6, v4

    move v4, v14

    float-to-double v13, v13

    sub-double/2addr v9, v13

    double-to-float v9, v9

    float-to-double v13, v0

    move v10, v4

    move v0, v9

    float-to-double v9, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v27, v27, v9

    add-double v27, v27, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    move/from16 v24, v11

    move v4, v12

    float-to-double v11, v15

    mul-double/2addr v13, v11

    add-double v13, v13, v27

    double-to-float v13, v13

    float-to-double v14, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v27, v27, v9

    sub-double v14, v14, v27

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    mul-double/2addr v1, v11

    add-double/2addr v1, v14

    double-to-float v1, v1

    array-length v2, v5

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14

    float-to-double v2, v13

    const/4 v7, 0x0

    aput-wide v2, v5, v7

    float-to-double v2, v1

    const/4 v7, 0x1

    aput-wide v2, v5, v7

    :cond_14
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_15

    move/from16 v2, v24

    float-to-double v2, v2

    float-to-double v7, v1

    float-to-double v9, v13

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    add-double/2addr v7, v2

    double-to-float v1, v7

    move-object/from16 v7, p4

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_9

    :cond_15
    move-object/from16 v7, p4

    :goto_9
    move v9, v0

    move/from16 v8, v19

    :cond_16
    :goto_a
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_b

    :cond_17
    move v2, v1

    move v4, v12

    move-object/from16 v23, v13

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_16

    const/high16 v0, 0x40000000    # 2.0f

    div-float v18, v18, v0

    add-float v1, v18, v10

    div-float v19, v19, v0

    add-float v0, v19, v15

    const/4 v3, 0x0

    float-to-double v10, v3

    float-to-double v2, v2

    float-to-double v12, v0

    float-to-double v0, v1

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    add-double/2addr v0, v10

    double-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_a

    :goto_b
    add-float/2addr v8, v0

    float-to-int v1, v8

    add-float/2addr v9, v0

    float-to-int v0, v9

    add-float/2addr v8, v4

    float-to-int v2, v8

    add-float/2addr v9, v6

    float-to-int v3, v9

    sub-int v4, v2, v1

    sub-int v5, v3, v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v4, v6, :cond_19

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_18

    goto :goto_c

    :cond_18
    if-eqz v22, :cond_1a

    :cond_19
    :goto_c
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_1a
    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    goto :goto_d

    :cond_1b
    move-wide/from16 v25, v4

    move/from16 v21, v11

    move-object/from16 v23, v13

    move-object/from16 v20, v14

    move/from16 v17, v15

    :goto_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    if-nez v1, :cond_1c

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    :cond_1c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_1d

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_1d

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline;

    instance-of v3, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    if-eqz v3, :cond_1e

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1e

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    const/4 v4, 0x0

    aget-wide v8, v3, v4

    aget-wide v3, v3, v5

    move/from16 v10, v21

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    move-result v2

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_f

    :cond_1e
    move/from16 v10, v21

    :goto_f
    move/from16 v21, v10

    goto :goto_e

    :cond_1f
    move/from16 v10, v21

    if-eqz v20, :cond_20

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    const/4 v6, 0x1

    aget-wide v11, v1, v6

    move-wide/from16 v3, v25

    move-object/from16 v1, v20

    move v2, v10

    move-wide v13, v3

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move v15, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v1

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v1, v20

    iget-boolean v1, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    or-int v1, v17, v1

    goto :goto_10

    :cond_20
    move-wide/from16 v13, v25

    const/4 v15, 0x1

    move/from16 v1, v17

    :goto_10
    move v6, v15

    :goto_11
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v6, v3, :cond_21

    aget-object v2, v2, v6

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v2, v13, v14, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    move-object/from16 v2, v23

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-static {v4, v7, v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_21
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v3, :cond_27

    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gtz v3, :cond_22

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_22
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    if-ltz v3, :cond_23

    iget v2, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_23
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v3, v2, :cond_27

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_24
    move v10, v11

    move-object v2, v13

    move/from16 v17, v15

    const/4 v15, 0x1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v4, v1, v10, v1}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v5, v4, v10, v4}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-static {v6, v5, v10, v5}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v8

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-static {v3, v2, v10, v2}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v1, v11

    float-to-int v12, v1

    add-float/2addr v4, v11

    float-to-int v11, v4

    add-float/2addr v1, v8

    float-to-int v1, v1

    add-float/2addr v4, v9

    float-to-int v4, v4

    sub-int v8, v1, v12

    sub-int v9, v4, v11

    cmpl-float v5, v6, v5

    if-nez v5, :cond_25

    cmpl-float v2, v3, v2

    if-nez v2, :cond_25

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    if-eqz v2, :cond_26

    :cond_25
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v7, v3, v2}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    :cond_26
    invoke-virtual {v7, v12, v11, v1, v4}, Landroid/view/View;->layout(IIII)V

    move/from16 v1, v17

    :cond_27
    :goto_12
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    if-eqz v4, :cond_28

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    aget-wide v11, v4, v15

    invoke-virtual {v3, v10}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v3

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v4, v8

    add-float/2addr v3, v4

    invoke-virtual {v7, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_13

    :cond_28
    const/4 v5, 0x0

    invoke-virtual {v3, v7, v10}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    goto :goto_13

    :cond_29
    return v1
.end method

.method public final readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    return-void
.end method

.method public final setup()V
    .locals 37

    move-object/from16 v0, p0

    const-string/jumbo v1, "translationY"

    const-string/jumbo v2, "translationX"

    const-string v3, "scaleY"

    const-string v4, "scaleX"

    const-string v5, "rotationY"

    const-string v6, "rotationX"

    const-string v7, "progress"

    const-string/jumbo v8, "transitionPathRotate"

    const-string v9, "rotation"

    const-string v10, "elevation"

    const-string v11, "alpha"

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v23, v15

    const/4 v15, -0x1

    if-eq v13, v15, :cond_0

    iput v13, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    :cond_0
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v15, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    move-object/from16 v24, v14

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-static {v15, v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iget v15, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-static {v0, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v15, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    move-object/from16 v25, v10

    if-eq v0, v15, :cond_4

    iget v10, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v10, :cond_4

    if-eqz v0, :cond_3

    if-nez v15, :cond_4

    :cond_3
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {v12, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget v10, v14, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-static {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "translationZ"

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_13

    goto :goto_0

    :cond_13
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v15

    :cond_14
    :goto_0
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    const-string v15, "CUSTOM,"

    move-object/from16 v27, v14

    const-string v14, ","

    if-nez v10, :cond_2d

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_28

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v10

    move-object/from16 v10, v28

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v28, v12

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v22, 0x1

    aget-object v30, v30, v22

    move-object/from16 v30, v15

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_15

    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    aget-object v31, v31, v22

    iput-object v12, v15, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    move-object/from16 v12, v25

    move-object/from16 v25, v6

    goto/16 :goto_9

    :cond_15
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_16
    move-object/from16 v28, v12

    move-object/from16 v30, v15

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_2
    move-object/from16 v12, v25

    :goto_3
    const/4 v15, -0x1

    goto/16 :goto_6

    :sswitch_0
    const-string/jumbo v12, "waveOffset"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_2

    :cond_17
    const/16 v12, 0xf

    goto :goto_4

    :sswitch_1
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    goto :goto_2

    :cond_18
    const/16 v12, 0xe

    goto :goto_4

    :sswitch_2
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    goto :goto_2

    :cond_19
    const/16 v12, 0xd

    :goto_4
    move v15, v12

    move-object/from16 v12, v25

    goto/16 :goto_6

    :sswitch_3
    move-object/from16 v12, v25

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    goto/16 :goto_5

    :cond_1a
    const/16 v15, 0xc

    goto/16 :goto_6

    :sswitch_4
    move-object/from16 v12, v25

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    goto/16 :goto_5

    :cond_1b
    const/16 v15, 0xb

    goto/16 :goto_6

    :sswitch_5
    move-object/from16 v12, v25

    const-string/jumbo v15, "transformPivotY"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/16 v15, 0xa

    goto/16 :goto_6

    :sswitch_6
    move-object/from16 v12, v25

    const-string/jumbo v15, "transformPivotX"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/16 v15, 0x9

    goto/16 :goto_6

    :sswitch_7
    move-object/from16 v12, v25

    const-string/jumbo v15, "waveVariesBy"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    goto/16 :goto_5

    :cond_1e
    const/16 v15, 0x8

    goto/16 :goto_6

    :sswitch_8
    move-object/from16 v12, v25

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    goto :goto_5

    :cond_1f
    const/4 v15, 0x7

    goto :goto_6

    :sswitch_9
    move-object/from16 v12, v25

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    goto :goto_5

    :cond_20
    const/4 v15, 0x6

    goto :goto_6

    :sswitch_a
    move-object/from16 v12, v25

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_21

    goto :goto_5

    :cond_21
    const/4 v15, 0x5

    goto :goto_6

    :sswitch_b
    move-object/from16 v12, v25

    const-string/jumbo v15, "translationZ"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_22

    goto :goto_5

    :cond_22
    const/4 v15, 0x4

    goto :goto_6

    :sswitch_c
    move-object/from16 v12, v25

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_23

    goto :goto_5

    :cond_23
    const/4 v15, 0x3

    goto :goto_6

    :sswitch_d
    move-object/from16 v12, v25

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_24

    goto :goto_5

    :cond_24
    const/4 v15, 0x2

    goto :goto_6

    :sswitch_e
    move-object/from16 v12, v25

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_25

    goto :goto_5

    :cond_25
    const/4 v15, 0x1

    goto :goto_6

    :sswitch_f
    move-object/from16 v12, v25

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26

    :goto_5
    goto/16 :goto_3

    :cond_26
    const/4 v15, 0x0

    :goto_6
    packed-switch v15, :pswitch_data_0

    move-object/from16 v25, v6

    const/4 v6, 0x0

    goto/16 :goto_8

    :pswitch_0
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    move-object/from16 v25, v6

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    :goto_7
    move-object v6, v15

    goto/16 :goto_8

    :pswitch_1
    move-object/from16 v25, v6

    const/4 v6, 0x0

    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v15, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_7

    :pswitch_2
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct {v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    goto/16 :goto_8

    :pswitch_3
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x1

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_8

    :pswitch_4
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x4

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto/16 :goto_8

    :pswitch_5
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x3

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_6
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x2

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_7
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x0

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_8
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v15, 0x8

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_9
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x7

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_a
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct {v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    const/4 v15, 0x0

    iput-boolean v15, v6, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    goto :goto_8

    :pswitch_b
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v15, 0xb

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_c
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v15, 0xa

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_d
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/16 v15, 0x9

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_e
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x6

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    goto :goto_8

    :pswitch_f
    move-object/from16 v25, v6

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    const/4 v15, 0x5

    invoke-direct {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>(I)V

    :goto_8
    move-object v15, v6

    :goto_9
    if-nez v15, :cond_27

    :goto_a
    move-object/from16 v6, v25

    move-object/from16 v10, v29

    move-object/from16 v15, v30

    move-object/from16 v25, v12

    move-object/from16 v12, v28

    goto/16 :goto_1

    :cond_27
    iput-object v10, v15, Landroidx/constraintlayout/motion/utils/ViewSpline;->mType:Ljava/lang/String;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_28
    move-object/from16 v28, v12

    move-object/from16 v30, v15

    move-object/from16 v12, v25

    move-object/from16 v25, v6

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_b

    :cond_29
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {v13, v10, v6}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(ILjava/util/HashMap;)V

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v10, 0x64

    move-object/from16 v13, v27

    invoke-virtual {v13, v10, v6}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(ILjava/util/HashMap;)V

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v13, v23

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_2a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v23, v6

    goto :goto_d

    :cond_2a
    move-object/from16 v23, v6

    const/4 v15, 0x0

    :goto_d
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewSpline;

    if-eqz v6, :cond_2b

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setup(I)V

    :cond_2b
    move-object/from16 v6, v23

    move-object/from16 v23, v13

    goto :goto_c

    :cond_2c
    move-object/from16 v13, v23

    goto :goto_e

    :cond_2d
    move-object/from16 v28, v12

    move-object/from16 v30, v15

    move-object/from16 v13, v23

    move-object/from16 v12, v25

    move-object/from16 v25, v6

    :goto_e
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v6, :cond_2e

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    :cond_2e
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    goto :goto_f

    :cond_2f
    move-object/from16 v15, v30

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_31

    move-object/from16 v19, v6

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v22, 0x1

    aget-object v23, v23, v22

    move-object/from16 v30, v15

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_30

    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    move-object/from16 v23, v13

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    iput-object v13, v15, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/16 v22, 0x1

    aget-object v13, v13, v22

    iput-object v13, v15, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    iput-object v6, v15, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    move-object/from16 v6, v25

    goto/16 :goto_15

    :cond_30
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_31
    move-object/from16 v19, v6

    move-object/from16 v23, v13

    move-object/from16 v30, v15

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_10
    move-object/from16 v6, v25

    :goto_11
    const/4 v13, -0x1

    goto/16 :goto_13

    :sswitch_10
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_10

    :cond_32
    const/16 v6, 0xb

    goto :goto_12

    :sswitch_11
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_10

    :cond_33
    const/16 v6, 0xa

    :goto_12
    move v13, v6

    move-object/from16 v6, v25

    goto/16 :goto_13

    :sswitch_12
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    goto :goto_10

    :cond_34
    move-object/from16 v6, v25

    const/16 v13, 0x9

    goto/16 :goto_13

    :sswitch_13
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    goto :goto_10

    :cond_35
    move-object/from16 v6, v25

    const/16 v13, 0x8

    goto/16 :goto_13

    :sswitch_14
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_10

    :cond_36
    move-object/from16 v6, v25

    const/4 v13, 0x7

    goto :goto_13

    :sswitch_15
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_10

    :cond_37
    move-object/from16 v6, v25

    const/4 v13, 0x6

    goto :goto_13

    :sswitch_16
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_10

    :cond_38
    move-object/from16 v6, v25

    const/4 v13, 0x5

    goto :goto_13

    :sswitch_17
    const-string/jumbo v6, "translationZ"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_10

    :cond_39
    move-object/from16 v6, v25

    const/4 v13, 0x4

    goto :goto_13

    :sswitch_18
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_10

    :cond_3a
    move-object/from16 v6, v25

    const/4 v13, 0x3

    goto :goto_13

    :sswitch_19
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_10

    :cond_3b
    move-object/from16 v6, v25

    const/4 v13, 0x2

    goto :goto_13

    :sswitch_1a
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto/16 :goto_10

    :cond_3c
    move-object/from16 v6, v25

    const/4 v13, 0x1

    goto :goto_13

    :sswitch_1b
    move-object/from16 v6, v25

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3d

    goto/16 :goto_11

    :cond_3d
    const/4 v13, 0x0

    :goto_13
    packed-switch v13, :pswitch_data_1

    const/4 v13, 0x0

    goto :goto_14

    :pswitch_10
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_11
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    invoke-direct {v13}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    goto :goto_14

    :pswitch_12
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x1

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_13
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x2

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_14
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x6

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_15
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x5

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_16
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    invoke-direct {v13}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    const/4 v15, 0x0

    iput-boolean v15, v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    goto :goto_14

    :pswitch_17
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/16 v15, 0x9

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_18
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/16 v15, 0x8

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_19
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x7

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_1a
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x4

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    goto :goto_14

    :pswitch_1b
    new-instance v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    const/4 v15, 0x3

    invoke-direct {v13, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>(I)V

    :goto_14
    move-object v15, v13

    :goto_15
    if-nez v15, :cond_3e

    :goto_16
    move-object/from16 v25, v6

    move-object/from16 v6, v19

    move-object/from16 v13, v23

    goto/16 :goto_f

    :cond_3e
    iput-object v10, v15, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_3f
    move-object/from16 v23, v13

    move-object/from16 v6, v25

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v10, :cond_40

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_40

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_17

    :cond_40
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_43

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v14, v23

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_41

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v19, v10

    goto :goto_19

    :cond_41
    move-object/from16 v19, v10

    const/4 v15, 0x0

    :goto_19
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    invoke-virtual {v10, v15}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setup(I)V

    move-object/from16 v23, v14

    move-object/from16 v10, v19

    goto :goto_18

    :cond_42
    move-object/from16 v6, v25

    :cond_43
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v13, 0x2

    add-int/lit8 v14, v10, 0x2

    new-array v13, v14, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v15, 0x0

    aput-object v24, v13, v15

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v15, v13, v10

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_44

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    move-object/from16 v25, v6

    const/4 v6, -0x1

    if-ne v10, v6, :cond_45

    const/4 v6, 0x0

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    goto :goto_1a

    :cond_44
    move-object/from16 v25, v6

    :cond_45
    :goto_1a
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x1

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/16 v22, 0x1

    add-int/lit8 v23, v10, 0x1

    aput-object v19, v13, v10

    move/from16 v10, v23

    goto :goto_1b

    :cond_46
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v10, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_49

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v23, v5

    move-object/from16 v19, v10

    move-object/from16 v10, v24

    iget-object v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v24, v10

    move-object/from16 v10, v30

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, v28

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_47
    move-object/from16 v24, v10

    move-object/from16 v10, v28

    :cond_48
    :goto_1d
    move-object/from16 v28, v10

    move-object/from16 v10, v19

    move-object/from16 v5, v23

    goto :goto_1c

    :cond_49
    move-object/from16 v23, v5

    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v5, 0x0

    :goto_1e
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v10, v6

    if-ge v5, v10, :cond_4c

    aget-object v6, v6, v5

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v15, 0x0

    aput v15, v10, v5

    const/4 v10, 0x0

    :goto_1f
    if-ge v10, v14, :cond_4a

    aget-object v15, v13, v10

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4b

    aget-object v15, v13, v10

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v15, :cond_4b

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    aget v10, v6, v5

    invoke-virtual {v15}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v15

    add-int/2addr v15, v10

    aput v15, v6, v5

    :cond_4a
    const/4 v15, 0x1

    goto :goto_20

    :cond_4b
    const/4 v15, 0x1

    add-int/2addr v10, v15

    goto :goto_1f

    :goto_20
    add-int/2addr v5, v15

    goto :goto_1e

    :cond_4c
    const/4 v5, 0x0

    aget-object v10, v13, v5

    iget v5, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_4d

    const/4 v5, 0x1

    goto :goto_21

    :cond_4d
    const/4 v5, 0x0

    :goto_21
    array-length v6, v6

    const/16 v10, 0x12

    add-int/2addr v10, v6

    new-array v6, v10, [Z

    const/4 v15, 0x1

    :goto_22
    if-ge v15, v14, :cond_4e

    move-object/from16 v19, v2

    aget-object v2, v13, v15

    const/16 v22, 0x1

    add-int/lit8 v24, v15, -0x1

    move-object/from16 v27, v1

    aget-object v1, v13, v24

    move-object/from16 v24, v7

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    move-object/from16 v28, v4

    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v7, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v4

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move-object/from16 v29, v3

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v7, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    const/4 v7, 0x0

    aget-boolean v21, v6, v7

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    move-object/from16 v31, v9

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v7, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v7

    or-int v7, v21, v7

    const/4 v9, 0x0

    aput-boolean v7, v6, v9

    const/4 v7, 0x1

    aget-boolean v9, v6, v7

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    or-int v4, v9, v3

    aput-boolean v4, v6, v7

    const/4 v4, 0x2

    aget-boolean v7, v6, v4

    or-int/2addr v3, v7

    aput-boolean v3, v6, v4

    const/4 v3, 0x3

    aget-boolean v4, v6, v3

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-static {v7, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v7

    or-int/2addr v4, v7

    aput-boolean v4, v6, v3

    const/4 v3, 0x4

    aget-boolean v4, v6, v3

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v1, v4

    aput-boolean v1, v6, v3

    const/16 v22, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v19

    move-object/from16 v7, v24

    move-object/from16 v1, v27

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    move-object/from16 v9, v31

    goto :goto_22

    :cond_4e
    move-object/from16 v27, v1

    move-object/from16 v19, v2

    move-object/from16 v29, v3

    move-object/from16 v28, v4

    move-object/from16 v24, v7

    move-object/from16 v31, v9

    const/16 v22, 0x1

    move/from16 v2, v22

    const/4 v1, 0x0

    :goto_23
    if-ge v2, v10, :cond_50

    aget-boolean v3, v6, v2

    if-eqz v3, :cond_4f

    add-int/lit8 v1, v1, 0x1

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    const/16 v22, 0x1

    goto :goto_23

    :cond_50
    new-array v2, v1, [I

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [D

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    new-array v1, v1, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_24
    if-ge v2, v10, :cond_52

    aget-boolean v3, v6, v2

    if-eqz v3, :cond_51

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v4, 0x1

    add-int/lit8 v5, v1, 0x1

    aput v2, v3, v1

    move v1, v5

    goto :goto_25

    :cond_51
    const/4 v4, 0x1

    :goto_25
    add-int/2addr v2, v4

    goto :goto_24

    :cond_52
    const/4 v4, 0x1

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v14, v3, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    new-array v2, v14, [D

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v14, :cond_55

    aget-object v4, v13, v3

    aget-object v5, v1, v3

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget v7, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move-object/from16 v30, v12

    iget v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    move-object/from16 v32, v8

    move-object/from16 v33, v11

    const/4 v8, 0x6

    new-array v11, v8, [F

    const/16 v16, 0x0

    aput v7, v11, v16

    const/4 v7, 0x1

    aput v9, v11, v7

    const/4 v9, 0x2

    aput v10, v11, v9

    const/4 v9, 0x3

    aput v15, v11, v9

    const/4 v9, 0x4

    aput v12, v11, v9

    const/4 v9, 0x5

    aput v4, v11, v9

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_27
    array-length v10, v6

    if-ge v4, v10, :cond_54

    aget v10, v6, v4

    if-ge v10, v8, :cond_53

    add-int/lit8 v8, v9, 0x1

    aget v10, v11, v10

    move v12, v8

    float-to-double v7, v10

    aput-wide v7, v5, v9

    move v9, v12

    const/4 v7, 0x1

    :cond_53
    add-int/2addr v4, v7

    const/4 v8, 0x6

    goto :goto_27

    :cond_54
    aget-object v4, v13, v3

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v4, v4

    aput-wide v4, v2, v3

    add-int/2addr v3, v7

    move-object/from16 v12, v30

    move-object/from16 v8, v32

    move-object/from16 v11, v33

    goto :goto_26

    :cond_55
    move-object/from16 v32, v8

    move-object/from16 v33, v11

    move-object/from16 v30, v12

    const/4 v3, 0x0

    :goto_28
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v5, v4

    if-ge v3, v5, :cond_57

    aget v4, v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_56

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, " ["

    invoke-static {v4, v5, v6}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v14, :cond_56

    invoke-static {v4}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v1, v5

    aget-wide v6, v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_29

    :cond_56
    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_28

    :cond_57
    const/4 v6, 0x1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v6

    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    :goto_2a
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5f

    aget-object v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2b
    if-ge v7, v14, :cond_5e

    aget-object v9, v13, v7

    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    if-nez v6, :cond_59

    new-array v5, v14, [D

    aget-object v6, v13, v7

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v6, :cond_58

    const/4 v6, 0x0

    :goto_2c
    const/4 v9, 0x2

    goto :goto_2d

    :cond_58
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v6

    goto :goto_2c

    :goto_2d
    new-array v10, v9, [I

    const/4 v9, 0x1

    aput v6, v10, v9

    const/4 v6, 0x0

    aput v14, v10, v6

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    :cond_59
    aget-object v9, v13, v7

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v10, v10

    aput-wide v10, v5, v8

    aget-object v10, v6, v8

    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v9, :cond_5a

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object v11, v13

    :goto_2e
    const/16 v22, 0x1

    goto :goto_30

    :cond_5a
    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5c

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v9

    move-object v11, v13

    float-to-double v12, v9

    const/4 v9, 0x0

    aput-wide v12, v10, v9

    :cond_5b
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    goto :goto_2e

    :cond_5c
    move-object v11, v13

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v12

    new-array v13, v12, [F

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_2f
    if-ge v9, v12, :cond_5b

    const/16 v22, 0x1

    add-int/lit8 v34, v15, 0x1

    move-object/from16 v35, v4

    aget v4, v13, v9

    move-object/from16 v36, v5

    float-to-double v4, v4

    aput-wide v4, v10, v15

    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v34

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    goto :goto_2f

    :goto_30
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v36

    goto :goto_31

    :cond_5d
    move-object/from16 v35, v4

    move-object v11, v13

    const/16 v22, 0x1

    :goto_31
    add-int/lit8 v7, v7, 0x1

    move-object v13, v11

    move-object/from16 v4, v35

    goto/16 :goto_2b

    :cond_5e
    move-object v11, v13

    const/16 v22, 0x1

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/lit8 v3, v3, 0x1

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v7, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_2a

    :cond_5f
    move-object v11, v13

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v4, v2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    aget-object v1, v11, v2

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_61

    new-array v1, v14, [I

    new-array v4, v14, [D

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    aput v14, v6, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v14, :cond_60

    aget-object v6, v11, v5

    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v7, v1, v5

    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v7, v7

    aput-wide v7, v4, v5

    aget-object v7, v2, v5

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v8, v8

    const/4 v10, 0x0

    aput-wide v8, v7, v10

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v8, v6

    const/4 v6, 0x1

    aput-wide v8, v7, v6

    add-int/2addr v5, v6

    goto :goto_32

    :cond_60
    new-instance v5, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    invoke-direct {v5, v1, v4, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    :cond_61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7e

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "CUSTOM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    new-instance v4, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    invoke-direct {v4}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    const/4 v5, 0x1

    new-array v6, v5, [F

    iput-object v6, v4, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->value:[F

    move-object v3, v4

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    goto/16 :goto_41

    :cond_62
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :goto_34
    move v15, v3

    :goto_35
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    goto/16 :goto_3f

    :sswitch_1c
    const-string/jumbo v4, "waveOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_34

    :cond_63
    const/16 v4, 0xd

    move v15, v4

    goto :goto_35

    :sswitch_1d
    move-object/from16 v4, v33

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    move v15, v3

    goto :goto_36

    :cond_64
    const/16 v5, 0xc

    move v15, v5

    :goto_36
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    goto/16 :goto_3f

    :sswitch_1e
    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    move v15, v3

    goto :goto_37

    :cond_65
    const/16 v6, 0xb

    move v15, v6

    :goto_37
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    goto :goto_39

    :sswitch_1f
    move-object/from16 v6, v30

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    move v15, v3

    goto :goto_38

    :cond_66
    const/16 v7, 0xa

    move v15, v7

    :goto_38
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    :goto_39
    move-object/from16 v7, v31

    goto/16 :goto_3f

    :sswitch_20
    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_67

    goto :goto_3a

    :cond_67
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    const/16 v15, 0x9

    goto/16 :goto_3f

    :sswitch_21
    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    const-string/jumbo v8, "waveVariesBy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    :goto_3a
    move v15, v3

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    goto/16 :goto_3f

    :cond_68
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    const/16 v15, 0x8

    goto/16 :goto_3f

    :sswitch_22
    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_69

    move v15, v3

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    goto/16 :goto_3f

    :cond_69
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    const/4 v15, 0x7

    goto/16 :goto_3f

    :sswitch_23
    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6a

    move v15, v3

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    goto :goto_3c

    :cond_6a
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    const/4 v15, 0x6

    goto/16 :goto_3f

    :sswitch_24
    move-object/from16 v10, v24

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6b

    goto :goto_3b

    :cond_6b
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    const/4 v15, 0x5

    goto/16 :goto_3f

    :sswitch_25
    move-object/from16 v10, v24

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    const-string/jumbo v11, "translationZ"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6c

    :goto_3b
    move v15, v3

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    :goto_3c
    move-object/from16 v14, v25

    move-object/from16 v11, v27

    goto/16 :goto_3f

    :cond_6c
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    const/4 v15, 0x4

    goto/16 :goto_3f

    :sswitch_26
    move-object/from16 v10, v24

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6d

    move v15, v3

    move-object/from16 v12, v19

    goto :goto_3d

    :cond_6d
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    const/4 v15, 0x3

    goto/16 :goto_3f

    :sswitch_27
    move-object/from16 v12, v19

    move-object/from16 v10, v24

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6e

    move v15, v3

    :goto_3d
    move-object/from16 v13, v23

    goto :goto_3e

    :cond_6e
    move-object/from16 v13, v23

    move-object/from16 v14, v25

    const/4 v15, 0x2

    goto :goto_3f

    :sswitch_28
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    move v15, v3

    :goto_3e
    move-object/from16 v14, v25

    goto :goto_3f

    :cond_6f
    move-object/from16 v14, v25

    const/4 v15, 0x1

    goto :goto_3f

    :sswitch_29
    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_70

    move v15, v3

    goto :goto_3f

    :cond_70
    const/4 v15, 0x0

    :goto_3f
    packed-switch v15, :pswitch_data_2

    const/4 v3, 0x0

    goto/16 :goto_41

    :pswitch_1c
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    :goto_40
    move-object v3, v15

    goto/16 :goto_41

    :pswitch_1d
    const/4 v3, 0x0

    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v15, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_40

    :pswitch_1e
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    goto :goto_41

    :pswitch_1f
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_20
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x2

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_21
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x0

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_22
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x6

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_23
    const/4 v15, 0x6

    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x5

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_24
    const/4 v15, 0x5

    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    const/4 v15, 0x0

    iput-boolean v15, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    goto :goto_41

    :pswitch_25
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/16 v15, 0x9

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_26
    const/16 v15, 0x9

    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/16 v15, 0x8

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_27
    const/16 v15, 0x8

    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x7

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_28
    const/4 v15, 0x7

    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x4

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    goto :goto_41

    :pswitch_29
    const/4 v15, 0x4

    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    const/4 v15, 0x3

    invoke-direct {v3, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    :goto_41
    if-nez v3, :cond_71

    :goto_42
    move-object/from16 v33, v4

    move-object/from16 v32, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v29, v8

    move-object/from16 v28, v9

    move-object/from16 v24, v10

    move-object/from16 v27, v11

    move-object/from16 v19, v12

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    const/4 v3, -0x1

    goto/16 :goto_33

    :cond_71
    iput-object v2, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mType:Ljava/lang/String;

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_72
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_43

    :cond_73
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    iget-object v2, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_74

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_44

    :cond_74
    iget-object v3, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v3, v2, [D

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x1

    const/4 v6, 0x3

    aput v6, v5, v4

    const/4 v4, 0x0

    aput v2, v5, v4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    new-instance v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-array v9, v4, [F

    iput-object v9, v8, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    new-array v9, v4, [D

    iput-object v9, v8, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    iput-object v8, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    iput v4, v8, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    new-array v4, v2, [F

    iput-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    new-array v4, v2, [D

    iput-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    new-array v4, v2, [F

    iput-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    new-array v4, v2, [F

    iput-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    new-array v4, v2, [F

    iput-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    new-array v2, v2, [F

    iput-object v7, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7d

    iget-object v1, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v4, v2

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x3

    aput v10, v8, v9

    const/4 v9, 0x0

    aput v4, v8, v9

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    iget-object v6, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v8, v6

    add-int/2addr v8, v7

    new-array v8, v8, [D

    iput-object v8, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    array-length v8, v6

    add-int/2addr v8, v7

    new-array v7, v8, [D

    aget-wide v7, v2, v9

    const-wide/16 v11, 0x0

    cmpl-double v7, v7, v11

    iget-object v8, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    iget-object v13, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    if-lez v7, :cond_75

    aget v7, v8, v9

    invoke-virtual {v13, v11, v12, v7}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    :cond_75
    array-length v7, v2

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    aget-wide v14, v2, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v14, v10

    if-gez v9, :cond_76

    aget v7, v8, v7

    invoke-virtual {v13, v10, v11, v7}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    :cond_76
    const/4 v7, 0x0

    :goto_45
    array-length v9, v4

    if-ge v7, v9, :cond_77

    aget-object v9, v4, v7

    iget-object v10, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    aget v10, v10, v7

    float-to-double v10, v10

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    iget-object v10, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    aget v10, v10, v7

    float-to-double v10, v10

    const/16 v22, 0x1

    aput-wide v10, v9, v22

    aget v10, v6, v7

    float-to-double v10, v10

    const/4 v12, 0x2

    aput-wide v10, v9, v12

    aget-wide v9, v2, v7

    aget v11, v8, v7

    invoke-virtual {v13, v9, v10, v11}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_77
    const/4 v12, 0x2

    const/16 v22, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :goto_46
    iget-object v9, v13, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v10, v9

    if-ge v6, v10, :cond_78

    aget v9, v9, v6

    float-to-double v9, v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_78
    move/from16 v6, v22

    const-wide/16 v9, 0x0

    :goto_47
    iget-object v11, v13, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v6, v14, :cond_79

    add-int/lit8 v14, v6, -0x1

    aget v17, v11, v14

    aget v11, v11, v6

    add-float v17, v17, v11

    div-float v11, v17, v15

    iget-object v15, v13, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v17, v15, v6

    aget-wide v14, v15, v14

    sub-double v17, v17, v14

    float-to-double v14, v11

    mul-double v17, v17, v14

    add-double v9, v17, v9

    const/16 v22, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_79
    const/4 v6, 0x0

    :goto_48
    iget-object v11, v13, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v14, v11

    if-ge v6, v14, :cond_7a

    aget v14, v11, v6

    move-object/from16 v17, v13

    div-double v12, v7, v9

    double-to-float v12, v12

    mul-float/2addr v14, v12

    aput v14, v11, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, v17

    const/4 v12, 0x2

    goto :goto_48

    :cond_7a
    move-object v6, v13

    iget-object v7, v6, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    aput-wide v8, v7, v10

    move/from16 v7, v22

    :goto_49
    iget-object v8, v6, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v9, v8

    if-ge v7, v9, :cond_7b

    add-int/lit8 v9, v7, -0x1

    aget v10, v8, v9

    aget v8, v8, v7

    add-float/2addr v10, v8

    div-float/2addr v10, v15

    iget-object v8, v6, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v11, v8, v7

    aget-wide v13, v8, v9

    sub-double/2addr v11, v13

    iget-object v8, v6, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    aget-wide v13, v8, v9

    float-to-double v9, v10

    mul-double/2addr v11, v9

    add-double/2addr v11, v13

    aput-wide v11, v8, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    move/from16 v22, v8

    goto :goto_49

    :cond_7b
    move/from16 v8, v22

    array-length v6, v2

    if-le v6, v8, :cond_7c

    const/4 v6, 0x0

    invoke-static {v6, v2, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    goto :goto_4a

    :cond_7c
    const/4 v4, 0x0

    const/4 v6, 0x0

    iput-object v4, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    :goto_4a
    invoke-static {v6, v3, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    goto/16 :goto_44

    :cond_7d
    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v4

    :cond_7e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_29
        -0x4a771f65 -> :sswitch_28
        -0x490b9c39 -> :sswitch_27
        -0x490b9c38 -> :sswitch_26
        -0x490b9c37 -> :sswitch_25
        -0x3bab3dd3 -> :sswitch_24
        -0x3621dfb2 -> :sswitch_23
        -0x3621dfb1 -> :sswitch_22
        -0x2f893320 -> :sswitch_21
        -0x266f082 -> :sswitch_20
        -0x42d1a3 -> :sswitch_1f
        0x2382115 -> :sswitch_1e
        0x589b15e -> :sswitch_1d
        0x94e04ec -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
