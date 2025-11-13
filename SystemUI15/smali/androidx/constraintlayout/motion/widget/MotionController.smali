.class public final Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

.field public mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

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

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p4, 0x4

    if-eq p2, p4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p4

    div-int/2addr v0, v1

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, v1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    div-int/2addr p3, v1

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iget p4, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p4

    div-int/2addr v0, v1

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/2addr p3, v1

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    div-int/2addr p3, v1

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

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

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    cmpg-float v8, v7, p1

    if-gez v8, :cond_4

    move-object v3, v6

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

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

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

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

.method public final getDpDt(FFF[F)V
    .locals 11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    aget-object v1, v1, v2

    float-to-double v3, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object p1, p1, v2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {p1, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    aget p1, v0, v2

    :goto_0
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v0, v9

    if-ge v2, v0, :cond_0

    aget-wide v0, v9, v2

    float-to-double v5, p1

    mul-double/2addr v0, v5

    aput-wide v0, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {p1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :cond_1
    return-void

    :cond_2
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    sub-float/2addr v1, v3

    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v3, v4

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr p1, p0

    add-float/2addr v3, v0

    add-float/2addr p1, v1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v4, p0, p2

    mul-float/2addr v4, v0

    mul-float/2addr v3, p2

    add-float/2addr v3, v4

    aput v3, p4, v2

    sub-float/2addr p0, p3

    mul-float/2addr p0, v1

    mul-float/2addr p1, p3

    add-float/2addr p1, p0

    const/4 p0, 0x1

    aput p1, p4, p0

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

    invoke-virtual {v3, v11, v7}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(FLandroid/view/View;)V

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

    if-eqz v1, :cond_25

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

    iget v8, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v9, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v12, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

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

    float-to-double v10, v0

    float-to-double v0, v1

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float v1, v2, v0

    const/4 v0, 0x0

    add-float/2addr v1, v0

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

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

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

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

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

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

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

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

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

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

    if-nez v3, :cond_24

    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gtz v3, :cond_22

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_22
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    if-ltz v3, :cond_23

    iget v2, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_23
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    if-eq v3, v2, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_12
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    :goto_13
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v4, v3

    if-ge v2, v4, :cond_28

    aget-object v3, v3, v2

    invoke-virtual {v3, v10, v7}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    move v10, v11

    move-object v2, v13

    move/from16 v17, v15

    const/4 v15, 0x1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v4, v1, v10, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v5, v4, v10, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v4

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    invoke-static {v6, v5, v10, v5}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v8

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    invoke-static {v3, v2, v10, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

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

    if-nez v5, :cond_26

    cmpl-float v2, v3, v2

    if-nez v2, :cond_26

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    if-eqz v2, :cond_27

    :cond_26
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v7, v3, v2}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    :cond_27
    invoke-virtual {v7, v12, v11, v1, v4}, Landroid/view/View;->layout(IIII)V

    move/from16 v1, v17

    :cond_28
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    if-eqz v4, :cond_29

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    aget-wide v11, v4, v15

    invoke-virtual {v3, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v3

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v4, v8

    add-float/2addr v3, v4

    invoke-virtual {v7, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_14

    :cond_29
    const/4 v5, 0x0

    invoke-virtual {v3, v10, v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(FLandroid/view/View;)V

    goto :goto_14

    :cond_2a
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

.method public final setup(IIJ)V
    .locals 50

    move-object/from16 v0, p0

    const-string/jumbo v3, "translationZ"

    const-string/jumbo v4, "translationY"

    const-string/jumbo v5, "translationX"

    const-string v6, "scaleY"

    const-string v7, "scaleX"

    const-string v8, "rotationY"

    const-string v9, "rotationX"

    const-string v10, "progress"

    const-string/jumbo v11, "transitionPathRotate"

    const-string v12, "rotation"

    const-string v13, "elevation"

    const-string v14, "alpha"

    const/16 v16, 0x4

    const/16 v17, 0x3

    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v23, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v24, v1

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    move-object/from16 v25, v15

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v26, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iput v1, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    move-object/from16 v27, v15

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    invoke-static {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    move-object/from16 v28, v13

    if-eq v0, v3, :cond_4

    iget v13, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v13, :cond_4

    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    invoke-static {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object/from16 v3, p0

    goto :goto_1

    :cond_12
    move-object/from16 v0, v26

    goto :goto_0

    :goto_1
    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    const/16 v26, 0x0

    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v29, v26

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v13

    move-object/from16 v13, v30

    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v30, v15

    instance-of v15, v13, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v15, :cond_15

    check-cast v13, Landroidx/constraintlayout/motion/widget/KeyPosition;

    new-instance v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v38, v1

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v39, v9

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v32, v15

    move/from16 v33, p1

    move/from16 v34, p2

    move-object/from16 v35, v13

    move-object/from16 v36, v1

    move-object/from16 v37, v9

    invoke-direct/range {v32 .. v37}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v1, v15}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v32, v8

    const-string v8, " KeyPath position \""

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "\" outside of range"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MotionController"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_13
    move-object/from16 v32, v8

    :goto_3
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v1, v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-virtual {v8, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v1, v13, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    const/4 v8, -0x1

    if-eq v1, v8, :cond_14

    iput v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    :cond_14
    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v1, v25

    goto :goto_5

    :cond_15
    move-object/from16 v38, v1

    move-object/from16 v32, v8

    move-object/from16 v39, v9

    instance-of v1, v13, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v1, :cond_16

    move-object/from16 v1, v25

    invoke-virtual {v13, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    move-object/from16 v8, v23

    goto :goto_4

    :cond_16
    move-object/from16 v1, v25

    instance-of v8, v13, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v8, :cond_17

    move-object/from16 v8, v23

    invoke-virtual {v13, v8}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_4

    :cond_17
    move-object/from16 v8, v23

    instance-of v9, v13, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v9, :cond_19

    if-nez v29, :cond_18

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    :cond_18
    move-object/from16 v9, v29

    check-cast v13, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v29, v9

    :goto_4
    move-object/from16 v9, v24

    goto :goto_5

    :cond_19
    move-object/from16 v9, v24

    invoke-virtual {v13, v9}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    invoke-virtual {v13, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    :goto_5
    move-object/from16 v25, v1

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v15, v30

    move-object/from16 v13, v31

    move-object/from16 v8, v32

    move-object/from16 v1, v38

    move-object/from16 v9, v39

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v38, v1

    move-object/from16 v32, v8

    move-object/from16 v39, v9

    move-object/from16 v30, v15

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v1, v25

    move-object/from16 v13, v29

    goto :goto_6

    :cond_1b
    move-object/from16 v38, v1

    move-object/from16 v32, v8

    move-object/from16 v39, v9

    move-object/from16 v30, v15

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v1, v25

    move-object/from16 v13, v26

    :goto_6
    move-object/from16 v25, v1

    if-eqz v13, :cond_1c

    const/4 v15, 0x0

    new-array v1, v15, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    :cond_1c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const-string v15, ","

    const-string v13, "CUSTOM"

    move-object/from16 v23, v8

    const-string v8, "CUSTOM,"

    if-nez v1, :cond_4a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 p2, v1

    move-object/from16 v1, v24

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    move-object/from16 v24, v2

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v31, v15

    const/16 v22, 0x1

    aget-object v15, v29, v22

    move-object/from16 v29, v8

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v34, v8

    move-object/from16 v8, v33

    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v33, v9

    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v9, :cond_1e

    :cond_1d
    :goto_9
    move-object/from16 v9, v33

    move-object/from16 v8, v34

    goto :goto_8

    :cond_1e
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v9, :cond_1d

    iget v8, v8, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_9

    :cond_1f
    move-object/from16 v33, v9

    new-instance v8, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v8, v1, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v15, v8

    move-object/from16 v2, v28

    move-object/from16 v8, v32

    move-object/from16 v9, v39

    goto/16 :goto_13

    :cond_20
    move-object/from16 v24, v2

    move-object/from16 v29, v8

    move-object/from16 v33, v9

    move-object/from16 v31, v15

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_a
    move-object/from16 v2, v28

    :goto_b
    move-object/from16 v8, v32

    :goto_c
    move-object/from16 v9, v39

    :goto_d
    const/4 v15, -0x1

    goto/16 :goto_12

    :sswitch_0
    const-string/jumbo v2, "waveOffset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_a

    :cond_21
    const/16 v2, 0xf

    goto :goto_e

    :sswitch_1
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_a

    :cond_22
    const/16 v2, 0xe

    goto :goto_e

    :sswitch_2
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_a

    :cond_23
    const/16 v2, 0xd

    :goto_e
    move v15, v2

    move-object/from16 v2, v28

    goto/16 :goto_10

    :sswitch_3
    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    goto/16 :goto_11

    :cond_24
    const/16 v8, 0xc

    goto :goto_f

    :sswitch_4
    move-object/from16 v2, v28

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    goto/16 :goto_11

    :cond_25
    const/16 v8, 0xb

    goto :goto_f

    :sswitch_5
    move-object/from16 v2, v28

    const-string/jumbo v8, "transformPivotY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto/16 :goto_11

    :cond_26
    const/16 v8, 0xa

    goto :goto_f

    :sswitch_6
    move-object/from16 v2, v28

    const-string/jumbo v8, "transformPivotX"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    goto/16 :goto_11

    :cond_27
    const/16 v8, 0x9

    :goto_f
    move v15, v8

    goto/16 :goto_10

    :sswitch_7
    move-object/from16 v2, v28

    const-string/jumbo v8, "waveVariesBy"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    goto/16 :goto_11

    :cond_28
    move-object/from16 v8, v32

    move-object/from16 v9, v39

    const/16 v15, 0x8

    goto/16 :goto_12

    :sswitch_8
    move-object/from16 v2, v28

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    goto :goto_11

    :cond_29
    move-object/from16 v8, v32

    move-object/from16 v9, v39

    const/4 v15, 0x7

    goto/16 :goto_12

    :sswitch_9
    move-object/from16 v2, v28

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto :goto_11

    :cond_2a
    move-object/from16 v8, v32

    move-object/from16 v9, v39

    const/4 v15, 0x6

    goto/16 :goto_12

    :sswitch_a
    move-object/from16 v2, v28

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    goto :goto_11

    :cond_2b
    move-object/from16 v8, v32

    move-object/from16 v9, v39

    const/4 v15, 0x5

    goto :goto_12

    :sswitch_b
    move-object/from16 v2, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    goto :goto_11

    :cond_2c
    move/from16 v15, v16

    goto :goto_10

    :sswitch_c
    move-object/from16 v2, v28

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    goto :goto_11

    :cond_2d
    move/from16 v15, v17

    :goto_10
    move-object/from16 v8, v32

    move-object/from16 v9, v39

    goto :goto_12

    :sswitch_d
    move-object/from16 v2, v28

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    :goto_11
    goto/16 :goto_b

    :cond_2e
    move-object/from16 v8, v32

    move-object/from16 v9, v39

    const/4 v15, 0x2

    goto :goto_12

    :sswitch_e
    move-object/from16 v2, v28

    move-object/from16 v8, v32

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto/16 :goto_c

    :cond_2f
    move-object/from16 v9, v39

    const/4 v15, 0x1

    goto :goto_12

    :sswitch_f
    move-object/from16 v2, v28

    move-object/from16 v8, v32

    move-object/from16 v9, v39

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_30

    goto/16 :goto_d

    :cond_30
    const/4 v15, 0x0

    :goto_12
    packed-switch v15, :pswitch_data_0

    move-object/from16 v15, v26

    goto/16 :goto_13

    :pswitch_0
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto :goto_13

    :pswitch_1
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto :goto_13

    :pswitch_2
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    goto :goto_13

    :pswitch_3
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    goto :goto_13

    :pswitch_4
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    goto :goto_13

    :pswitch_5
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    goto :goto_13

    :pswitch_6
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    goto :goto_13

    :pswitch_7
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto :goto_13

    :pswitch_8
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    goto :goto_13

    :pswitch_9
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    goto :goto_13

    :pswitch_a
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    goto :goto_13

    :pswitch_b
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    goto :goto_13

    :pswitch_c
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    goto :goto_13

    :pswitch_d
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    goto :goto_13

    :pswitch_e
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    goto :goto_13

    :pswitch_f
    new-instance v15, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    :goto_13
    if-nez v15, :cond_31

    move-object/from16 v1, p2

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    move-object/from16 v39, v9

    :goto_14
    move-object/from16 v2, v24

    move-object/from16 v8, v29

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    goto/16 :goto_7

    :cond_31
    iput-object v1, v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mType:Ljava/lang/String;

    move-object/from16 v39, v9

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p2

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    goto :goto_14

    :cond_32
    move-object/from16 v24, v2

    move-object/from16 v29, v8

    move-object/from16 v33, v9

    move-object/from16 v31, v15

    move-object/from16 v2, v28

    move-object/from16 v8, v32

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v15, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v15, :cond_45

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    check-cast v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_16
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_45

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 p2, v1

    move-object/from16 v1, v32

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v34, v15

    move-object/from16 v15, v32

    check-cast v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-nez v15, :cond_33

    move-object/from16 v1, p2

    :goto_17
    move-object/from16 v15, v34

    goto :goto_16

    :cond_33
    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_35

    move-object/from16 v32, v13

    const/4 v13, 0x7

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v13, v9, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v1, :cond_34

    check-cast v15, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    iget v13, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget-object v15, v15, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v15, v13, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_34
    :goto_18
    move-object/from16 v1, p2

    move-object/from16 v13, v32

    goto :goto_17

    :cond_35
    move-object/from16 v32, v13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1

    :goto_19
    move-object/from16 v13, v39

    :goto_1a
    const/4 v1, -0x1

    goto/16 :goto_1c

    :sswitch_10
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_19

    :cond_36
    const/16 v1, 0xd

    goto/16 :goto_1b

    :sswitch_11
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_19

    :cond_37
    const/16 v1, 0xc

    goto/16 :goto_1b

    :sswitch_12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_19

    :cond_38
    const/16 v1, 0xb

    goto/16 :goto_1b

    :sswitch_13
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_19

    :cond_39
    const/16 v1, 0xa

    goto :goto_1b

    :sswitch_14
    const-string/jumbo v13, "transformPivotY"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_19

    :cond_3a
    const/16 v1, 0x9

    goto :goto_1b

    :sswitch_15
    const-string/jumbo v13, "transformPivotX"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_19

    :cond_3b
    move-object/from16 v13, v39

    const/16 v1, 0x8

    goto/16 :goto_1c

    :sswitch_16
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_19

    :cond_3c
    move-object/from16 v13, v39

    const/4 v1, 0x7

    goto :goto_1c

    :sswitch_17
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_19

    :cond_3d
    move-object/from16 v13, v39

    const/4 v1, 0x6

    goto :goto_1c

    :sswitch_18
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_19

    :cond_3e
    move-object/from16 v13, v39

    const/4 v1, 0x5

    goto :goto_1c

    :sswitch_19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_19

    :cond_3f
    move/from16 v1, v16

    goto :goto_1b

    :sswitch_1a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_19

    :cond_40
    move/from16 v1, v17

    :goto_1b
    move-object/from16 v13, v39

    goto :goto_1c

    :sswitch_1b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto/16 :goto_19

    :cond_41
    move-object/from16 v13, v39

    const/4 v1, 0x2

    goto :goto_1c

    :sswitch_1c
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_19

    :cond_42
    move-object/from16 v13, v39

    const/4 v1, 0x1

    goto :goto_1c

    :sswitch_1d
    move-object/from16 v13, v39

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto/16 :goto_1a

    :cond_43
    const/4 v1, 0x0

    :goto_1c
    packed-switch v1, :pswitch_data_1

    :cond_44
    move-object/from16 v39, v13

    goto/16 :goto_18

    :pswitch_10
    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_44

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v39, v13

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_11
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_12
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_13
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_14
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_15
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_16
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_17
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_18
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_19
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_1a
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_1b
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_1c
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :pswitch_1d
    move-object/from16 v39, v13

    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_34

    iget v1, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-virtual {v15, v13, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(FI)V

    goto/16 :goto_18

    :cond_45
    move-object/from16 p2, v1

    move-object/from16 v32, v13

    move-object/from16 v1, p2

    move-object/from16 v13, v32

    goto/16 :goto_15

    :cond_46
    move-object/from16 v32, v13

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move-object/from16 v9, v38

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(ILjava/util/HashMap;)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move-object/from16 v9, v30

    const/16 v13, 0x64

    invoke-virtual {v9, v13, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(ILjava/util/HashMap;)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v13, v33

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_47

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 p2, v1

    goto :goto_1e

    :cond_47
    move-object/from16 p2, v1

    const/4 v15, 0x0

    :goto_1e
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v1, :cond_48

    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    :cond_48
    move-object/from16 v1, p2

    move-object/from16 v33, v13

    goto :goto_1d

    :cond_49
    move-object/from16 v13, v33

    goto :goto_1f

    :cond_4a
    move-object/from16 v24, v2

    move-object/from16 v29, v8

    move-object/from16 v31, v15

    move-object/from16 v2, v28

    move-object/from16 v8, v32

    move-object/from16 v32, v13

    move-object v13, v9

    :goto_1f
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v1, :cond_4b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    :cond_4b
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4c

    goto :goto_20

    :cond_4c
    move-object/from16 v15, v29

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_50

    move-object/from16 p2, v1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v29, v15

    move-object/from16 v15, v31

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v22, 0x1

    aget-object v15, v23, v22

    move-object/from16 v33, v13

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_21
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v28, v13

    move-object/from16 v13, v23

    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v3, :cond_4e

    :cond_4d
    :goto_22
    move-object/from16 v3, p0

    move-object/from16 v13, v28

    goto :goto_21

    :cond_4e
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v3, :cond_4d

    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v1, v13, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_22

    :cond_4f
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v3, v9, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v13, v4

    move-object v15, v5

    move-object/from16 v1, v39

    :goto_23
    move-wide/from16 v4, p3

    goto/16 :goto_2b

    :cond_50
    move-object/from16 p2, v1

    move-object/from16 v33, v13

    move-object/from16 v29, v15

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_24
    move-object/from16 v1, v39

    :goto_25
    const/4 v3, -0x1

    goto/16 :goto_28

    :sswitch_1e
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_24

    :cond_51
    const/16 v1, 0xb

    goto :goto_26

    :sswitch_1f
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_24

    :cond_52
    const/16 v1, 0xa

    goto :goto_26

    :sswitch_20
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_24

    :cond_53
    const/16 v1, 0x9

    :goto_26
    move v3, v1

    goto :goto_27

    :sswitch_21
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_24

    :cond_54
    move-object/from16 v1, v39

    const/16 v3, 0x8

    goto/16 :goto_28

    :sswitch_22
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto :goto_24

    :cond_55
    move-object/from16 v1, v39

    const/4 v3, 0x7

    goto :goto_28

    :sswitch_23
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto :goto_24

    :cond_56
    move-object/from16 v1, v39

    const/4 v3, 0x6

    goto :goto_28

    :sswitch_24
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_24

    :cond_57
    move-object/from16 v1, v39

    const/4 v3, 0x5

    goto :goto_28

    :sswitch_25
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_24

    :cond_58
    move/from16 v3, v16

    goto :goto_27

    :sswitch_26
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_24

    :cond_59
    move/from16 v3, v17

    :goto_27
    move-object/from16 v1, v39

    goto :goto_28

    :sswitch_27
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto :goto_24

    :cond_5a
    move-object/from16 v1, v39

    const/4 v3, 0x2

    goto :goto_28

    :sswitch_28
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_24

    :cond_5b
    move-object/from16 v1, v39

    const/4 v3, 0x1

    goto :goto_28

    :sswitch_29
    move-object/from16 v1, v39

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto/16 :goto_25

    :cond_5c
    const/4 v3, 0x0

    :goto_28
    packed-switch v3, :pswitch_data_2

    move-object v13, v4

    move-object v15, v5

    move-object/from16 v3, v26

    goto/16 :goto_23

    :pswitch_1e
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    :goto_29
    move-object v13, v4

    move-object v15, v5

    move-wide/from16 v4, p3

    goto :goto_2a

    :pswitch_1f
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    goto :goto_29

    :pswitch_20
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    goto :goto_29

    :pswitch_21
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    goto :goto_29

    :pswitch_22
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    goto :goto_29

    :pswitch_23
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    goto :goto_29

    :pswitch_24
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    goto :goto_29

    :pswitch_25
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    goto :goto_29

    :pswitch_26
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    goto :goto_29

    :pswitch_27
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    goto :goto_29

    :pswitch_28
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    goto :goto_29

    :pswitch_29
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    goto :goto_29

    :goto_2a
    iput-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastTime:J

    :goto_2b
    if-nez v3, :cond_5d

    move-object/from16 v3, p0

    move-object/from16 v39, v1

    :goto_2c
    move-object v4, v13

    move-object v5, v15

    move-object/from16 v13, v33

    move-object/from16 v1, p2

    goto/16 :goto_20

    :cond_5d
    iput-object v9, v3, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    move-object/from16 v4, p0

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v39, v1

    move-object v3, v4

    goto :goto_2c

    :cond_5e
    move-object v15, v5

    move-object/from16 v33, v13

    move-object/from16 v1, v39

    move-object v13, v4

    move-object v4, v3

    iget-object v3, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v9, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v9, :cond_70

    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v9, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_70

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 p2, v3

    move-object/from16 v3, v28

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v34, v28

    check-cast v34, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    if-nez v34, :cond_5f

    :goto_2f
    move-object/from16 v3, p2

    goto :goto_2e

    :cond_5f
    move-object/from16 v28, v9

    move-object/from16 v9, v32

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_61

    move-object/from16 v30, v13

    const/4 v13, 0x7

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v13, v5, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v3, :cond_60

    move-object/from16 v13, v34

    check-cast v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    move-object/from16 v31, v15

    iget v15, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v32, v9

    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    move-object/from16 v40, v1

    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object/from16 p3, v5

    iget-object v5, v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v5, v15, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v3, v13, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    move-object/from16 v41, v8

    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    aput v9, v8, v5

    const/4 v5, 0x1

    aput v1, v8, v5

    invoke-virtual {v3, v15, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget v1, v13, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    move-object/from16 v4, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v9, v28

    move-object/from16 v13, v30

    move-object/from16 v15, v31

    move-object/from16 v1, v40

    move-object/from16 v8, v41

    goto :goto_2e

    :cond_60
    move-object/from16 v4, p0

    move-object/from16 v3, p2

    move-object/from16 v32, v9

    move-object/from16 v9, v28

    move-object/from16 v13, v30

    goto/16 :goto_2e

    :cond_61
    move-object/from16 v40, v1

    move-object/from16 p3, v5

    move-object/from16 v41, v8

    move-object/from16 v32, v9

    move-object/from16 v30, v13

    move-object/from16 v31, v15

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    :goto_30
    move-object/from16 v1, v30

    :goto_31
    move-object/from16 v4, v31

    move-object/from16 v8, v40

    :goto_32
    move-object/from16 v5, v41

    :goto_33
    const/4 v9, -0x1

    goto/16 :goto_37

    :sswitch_2a
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_30

    :cond_62
    const/16 v1, 0xb

    goto :goto_34

    :sswitch_2b
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto :goto_30

    :cond_63
    const/16 v1, 0xa

    goto :goto_34

    :sswitch_2c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_30

    :cond_64
    const/16 v1, 0x9

    :goto_34
    move v9, v1

    goto :goto_35

    :sswitch_2d
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_30

    :cond_65
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v40

    move-object/from16 v5, v41

    const/16 v9, 0x8

    goto/16 :goto_37

    :sswitch_2e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_30

    :cond_66
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v40

    move-object/from16 v5, v41

    const/4 v9, 0x7

    goto/16 :goto_37

    :sswitch_2f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto :goto_30

    :cond_67
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v40

    move-object/from16 v5, v41

    const/4 v9, 0x6

    goto/16 :goto_37

    :sswitch_30
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto :goto_30

    :cond_68
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v40

    move-object/from16 v5, v41

    const/4 v9, 0x5

    goto/16 :goto_37

    :sswitch_31
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_30

    :cond_69
    move/from16 v9, v16

    :goto_35
    move-object/from16 v1, v30

    goto :goto_36

    :sswitch_32
    move-object/from16 v1, v30

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_31

    :cond_6a
    move/from16 v9, v17

    :goto_36
    move-object/from16 v4, v31

    move-object/from16 v8, v40

    move-object/from16 v5, v41

    goto :goto_37

    :sswitch_33
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v8, v40

    if-nez v5, :cond_6b

    goto/16 :goto_32

    :cond_6b
    move-object/from16 v5, v41

    const/4 v9, 0x2

    goto :goto_37

    :sswitch_34
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    move-object/from16 v5, v41

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    move-object/from16 v8, v40

    goto/16 :goto_33

    :cond_6c
    move-object/from16 v8, v40

    const/4 v9, 0x1

    goto :goto_37

    :sswitch_35
    move-object/from16 v1, v30

    move-object/from16 v4, v31

    move-object/from16 v8, v40

    move-object/from16 v5, v41

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    goto/16 :goto_33

    :cond_6d
    const/4 v9, 0x0

    :goto_37
    packed-switch v9, :pswitch_data_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "UNKNOWN addValues \""

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "KeyTimeCycles"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p3

    :cond_6e
    move-object/from16 v41, v5

    move-object/from16 v40, v8

    goto/16 :goto_38

    :pswitch_2a
    move-object/from16 v3, p3

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_6e

    iget v9, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    move-object/from16 v40, v8

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    move-object/from16 v41, v5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v13

    move/from16 v36, v15

    move/from16 v37, v5

    move/from16 v38, v9

    move/from16 v39, v8

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_2b
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_2c
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_2d
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_2e
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_2f
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_30
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_31
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_32
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto/16 :goto_38

    :pswitch_33
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto :goto_38

    :pswitch_34
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    goto :goto_38

    :pswitch_35
    move-object/from16 v3, p3

    move-object/from16 v41, v5

    move-object/from16 v40, v8

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v8, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v15

    move/from16 v38, v5

    move/from16 v39, v13

    invoke-virtual/range {v34 .. v39}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(FFFII)V

    :cond_6f
    :goto_38
    move-object v13, v1

    move-object v5, v3

    move-object v15, v4

    move-object/from16 v9, v28

    move-object/from16 v1, v40

    move-object/from16 v8, v41

    move-object/from16 v4, p0

    goto/16 :goto_2f

    :cond_70
    move-object/from16 v40, v1

    move-object/from16 p2, v3

    move-object/from16 v41, v8

    move-object v1, v13

    move-object v4, v15

    move-object/from16 v3, p2

    move-object v13, v1

    move-object v15, v4

    move-object/from16 v1, v40

    move-object/from16 v8, v41

    move-object/from16 v4, p0

    goto/16 :goto_2d

    :cond_71
    move-object/from16 v40, v1

    move-object/from16 v41, v8

    move-object v1, v13

    move-object v4, v15

    move-object/from16 v3, p0

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, v33

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_3a

    :cond_72
    const/4 v13, 0x0

    :goto_3a
    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    move-object/from16 v33, v9

    goto :goto_39

    :cond_73
    move-object v1, v4

    move-object v4, v5

    move-object/from16 v41, v8

    move-object/from16 v40, v39

    :cond_74
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x2

    add-int/lit8 v15, v5, 0x2

    new-array v8, v15, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v9, 0x0

    aput-object v27, v8, v9

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v13, v8, v5

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_75

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    move-object/from16 v31, v4

    const/4 v4, -0x1

    if-ne v5, v4, :cond_76

    iput v9, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    goto :goto_3b

    :cond_75
    move-object/from16 v31, v4

    :cond_76
    :goto_3b
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/16 v22, 0x1

    add-int/lit8 v23, v5, 0x1

    aput-object v9, v8, v5

    move/from16 v5, v23

    goto :goto_3c

    :cond_77
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 p2, v5

    move-object/from16 v13, v27

    iget-object v5, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v27, v13

    move-object/from16 v13, v29

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v13, v24

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_78
    move-object/from16 v27, v13

    move-object/from16 v13, v24

    :cond_79
    :goto_3e
    move-object/from16 v5, p2

    move-object/from16 v24, v13

    goto :goto_3d

    :cond_7a
    const/4 v5, 0x0

    new-array v9, v5, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v4, 0x0

    :goto_3f
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v9, v5

    if-ge v4, v9, :cond_7d

    aget-object v5, v5, v4

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v13, 0x0

    aput v13, v9, v4

    const/4 v9, 0x0

    :goto_40
    if-ge v9, v15, :cond_7b

    aget-object v13, v8, v9

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7c

    aget-object v13, v8, v9

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v13, :cond_7c

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    aget v9, v5, v4

    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v13

    add-int/2addr v13, v9

    aput v13, v5, v4

    :cond_7b
    const/4 v13, 0x1

    goto :goto_41

    :cond_7c
    const/4 v13, 0x1

    add-int/2addr v9, v13

    goto :goto_40

    :goto_41
    add-int/2addr v4, v13

    goto :goto_3f

    :cond_7d
    const/4 v4, 0x0

    aget-object v9, v8, v4

    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v9, -0x1

    if-eq v4, v9, :cond_7e

    const/4 v4, 0x1

    goto :goto_42

    :cond_7e
    const/4 v4, 0x0

    :goto_42
    array-length v5, v5

    const/16 v9, 0x12

    add-int/2addr v9, v5

    new-array v5, v9, [Z

    const/4 v13, 0x1

    :goto_43
    if-ge v13, v15, :cond_7f

    move-object/from16 v30, v1

    aget-object v1, v8, v13

    const/16 v22, 0x1

    add-int/lit8 v23, v13, -0x1

    move-object/from16 v24, v0

    aget-object v0, v8, v23

    move-object/from16 v23, v10

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    move-object/from16 v28, v7

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v10, v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v7

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    move-object/from16 v29, v6

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v10, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v6

    const/4 v10, 0x0

    aget-boolean v21, v5, v10

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    move-object/from16 v33, v12

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-static {v10, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v10

    or-int v10, v21, v10

    const/4 v12, 0x0

    aput-boolean v10, v5, v12

    const/4 v10, 0x1

    aget-boolean v12, v5, v10

    or-int/2addr v6, v7

    or-int/2addr v6, v4

    or-int v7, v12, v6

    aput-boolean v7, v5, v10

    const/4 v7, 0x2

    aget-boolean v10, v5, v7

    or-int/2addr v6, v10

    aput-boolean v6, v5, v7

    aget-boolean v6, v5, v17

    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    invoke-static {v7, v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v7

    or-int/2addr v6, v7

    aput-boolean v6, v5, v17

    aget-boolean v6, v5, v16

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v0

    or-int/2addr v0, v6

    aput-boolean v0, v5, v16

    const/16 v22, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v23

    move-object/from16 v0, v24

    move-object/from16 v7, v28

    move-object/from16 v6, v29

    move-object/from16 v1, v30

    move-object/from16 v12, v33

    goto :goto_43

    :cond_7f
    move-object/from16 v24, v0

    move-object/from16 v30, v1

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v23, v10

    move-object/from16 v33, v12

    const/16 v22, 0x1

    move/from16 v1, v22

    const/4 v0, 0x0

    :goto_44
    if-ge v1, v9, :cond_81

    aget-boolean v4, v5, v1

    if-eqz v4, :cond_80

    add-int/lit8 v0, v0, 0x1

    :cond_80
    add-int/lit8 v1, v1, 0x1

    const/16 v22, 0x1

    goto :goto_44

    :cond_81
    new-array v1, v0, [I

    iput-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [D

    iput-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    new-array v0, v0, [D

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_45
    if-ge v1, v9, :cond_83

    aget-boolean v4, v5, v1

    if-eqz v4, :cond_82

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v6, 0x1

    add-int/lit8 v7, v0, 0x1

    aput v1, v4, v0

    move v0, v7

    goto :goto_46

    :cond_82
    const/4 v6, 0x1

    :goto_46
    add-int/2addr v1, v6

    goto :goto_45

    :cond_83
    const/4 v6, 0x1

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v0, v0

    const/4 v1, 0x2

    new-array v4, v1, [I

    aput v0, v4, v6

    const/4 v0, 0x0

    aput v15, v4, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    new-array v1, v15, [D

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v15, :cond_86

    aget-object v5, v8, v4

    aget-object v6, v0, v4

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget v9, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    move-object/from16 v34, v2

    iget v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    move-object/from16 v35, v11

    move-object/from16 v36, v14

    const/4 v11, 0x6

    new-array v14, v11, [F

    const/16 v18, 0x0

    aput v9, v14, v18

    const/4 v9, 0x1

    aput v10, v14, v9

    const/4 v10, 0x2

    aput v12, v14, v10

    aput v13, v14, v17

    aput v2, v14, v16

    const/4 v2, 0x5

    aput v5, v14, v2

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_48
    array-length v12, v7

    if-ge v5, v12, :cond_85

    aget v12, v7, v5

    if-ge v12, v11, :cond_84

    add-int/lit8 v11, v10, 0x1

    aget v12, v14, v12

    float-to-double v12, v12

    aput-wide v12, v6, v10

    move v10, v11

    :cond_84
    add-int/2addr v5, v9

    const/4 v11, 0x6

    goto :goto_48

    :cond_85
    aget-object v5, v8, v4

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    float-to-double v5, v5

    aput-wide v5, v1, v4

    add-int/2addr v4, v9

    move-object/from16 v2, v34

    move-object/from16 v11, v35

    move-object/from16 v14, v36

    goto :goto_47

    :cond_86
    move-object/from16 v34, v2

    move-object/from16 v35, v11

    move-object/from16 v36, v14

    const/4 v2, 0x5

    const/4 v4, 0x0

    :goto_49
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v6, v5

    if-ge v4, v6, :cond_88

    aget v5, v5, v4

    const/4 v9, 0x6

    if-ge v5, v9, :cond_87

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    const-string v7, " ["

    invoke-static {v5, v6, v7}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_4a
    if-ge v6, v15, :cond_87

    invoke-static {v5}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v0, v6

    aget-wide v10, v7, v4

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_4a

    :cond_87
    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_49

    :cond_88
    const/4 v7, 0x1

    const/4 v9, 0x6

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v7

    new-array v4, v4, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    :goto_4b
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_90

    aget-object v5, v5, v4

    move-object/from16 v10, v26

    move-object v11, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4c
    if-ge v6, v15, :cond_8f

    aget-object v12, v8, v6

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8e

    if-nez v11, :cond_8a

    new-array v10, v15, [D

    aget-object v11, v8, v6

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v11, :cond_89

    const/4 v11, 0x0

    :goto_4d
    const/4 v12, 0x2

    goto :goto_4e

    :cond_89
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v11

    goto :goto_4d

    :goto_4e
    new-array v13, v12, [I

    const/4 v12, 0x1

    aput v11, v13, v12

    const/4 v11, 0x0

    aput v15, v13, v11

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    :cond_8a
    aget-object v12, v8, v6

    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    float-to-double v13, v13

    aput-wide v13, v10, v7

    aget-object v13, v11, v7

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v12, :cond_8b

    move-object/from16 p2, v10

    const/4 v2, 0x1

    goto :goto_50

    :cond_8b
    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_8c

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v12

    move-object/from16 p2, v10

    float-to-double v9, v12

    const/4 v12, 0x0

    aput-wide v9, v13, v12

    goto :goto_50

    :cond_8c
    move-object/from16 p2, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v9

    new-array v10, v9, [F

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4f
    if-ge v12, v9, :cond_8d

    add-int/lit8 v22, v14, 0x1

    aget v2, v10, v12

    move/from16 p3, v9

    move-object/from16 v38, v10

    float-to-double v9, v2

    aput-wide v9, v13, v14

    const/4 v2, 0x1

    add-int/2addr v12, v2

    move/from16 v9, p3

    move/from16 v14, v22

    move-object/from16 v10, v38

    goto :goto_4f

    :cond_8d
    :goto_50
    add-int/2addr v7, v2

    move-object/from16 v10, p2

    goto :goto_51

    :cond_8e
    const/4 v2, 0x1

    :goto_51
    add-int/2addr v6, v2

    const/4 v2, 0x5

    const/4 v9, 0x6

    goto/16 :goto_4c

    :cond_8f
    const/4 v2, 0x1

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    invoke-static {v11, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/2addr v4, v2

    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v2, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v2

    aput-object v2, v7, v4

    const/4 v2, 0x5

    const/4 v9, 0x6

    goto/16 :goto_4b

    :cond_90
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v4, v1, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    aget-object v0, v8, v1

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_92

    new-array v0, v15, [I

    new-array v2, v15, [D

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v15, v5, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v4, 0x0

    :goto_52
    if-ge v4, v15, :cond_91

    aget-object v5, v8, v4

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v6, v0, v4

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    float-to-double v6, v6

    aput-wide v6, v2, v4

    aget-object v6, v1, v4

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    float-to-double v9, v7

    const/4 v7, 0x0

    aput-wide v9, v6, v7

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    float-to-double v9, v5

    const/4 v5, 0x1

    aput-wide v9, v6, v5

    add-int/2addr v4, v5

    goto :goto_52

    :cond_91
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    invoke-direct {v4, v0, v2, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    :cond_92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c5

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v32

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_93

    new-instance v6, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    invoke-direct {v6}, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;-><init>()V

    move-object/from16 p3, v0

    move-object/from16 v32, v5

    move-object v5, v6

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    goto/16 :goto_5e

    :cond_93
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_4

    :goto_54
    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    :goto_55
    move-object/from16 v0, v40

    move-object/from16 v1, v41

    :goto_56
    const/16 v23, -0x1

    goto/16 :goto_5c

    :sswitch_36
    const-string/jumbo v6, "waveOffset"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    goto :goto_54

    :cond_94
    const/16 v6, 0xd

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v23, v6

    move-object/from16 v6, v36

    goto/16 :goto_5c

    :sswitch_37
    move-object/from16 v6, v36

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    goto :goto_55

    :cond_95
    const/16 v7, 0xc

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v23, v7

    move-object/from16 v7, v35

    goto/16 :goto_5c

    :sswitch_38
    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_96

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    goto/16 :goto_55

    :cond_96
    const/16 v8, 0xb

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v23, v8

    move-object/from16 v8, v34

    goto/16 :goto_5c

    :sswitch_39
    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_97

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    goto/16 :goto_55

    :cond_97
    const/16 v9, 0xa

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v23, v9

    move-object/from16 v9, v33

    goto/16 :goto_5c

    :sswitch_3a
    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_98

    goto :goto_57

    :cond_98
    const/16 v10, 0x9

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v23, v10

    move-object/from16 v10, v29

    goto/16 :goto_5c

    :sswitch_3b
    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    const-string/jumbo v10, "waveVariesBy"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_99

    :goto_57
    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    goto/16 :goto_59

    :cond_99
    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    const/16 v23, 0x8

    goto/16 :goto_5c

    :sswitch_3c
    move-object/from16 v10, v29

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    if-nez v11, :cond_9a

    move-object/from16 v11, v28

    goto/16 :goto_59

    :cond_9a
    move-object/from16 v11, v28

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    const/16 v23, 0x7

    goto/16 :goto_5c

    :sswitch_3d
    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 p3, v0

    if-nez v12, :cond_9b

    move-object/from16 v12, v23

    goto :goto_58

    :cond_9b
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    const/16 v23, 0x6

    goto/16 :goto_5c

    :sswitch_3e
    move-object/from16 v12, v23

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 p3, v0

    if-nez v13, :cond_9c

    :goto_58
    move-object/from16 v13, v24

    goto :goto_59

    :cond_9c
    move-object/from16 v13, v24

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    const/16 v23, 0x5

    goto/16 :goto_5c

    :sswitch_3f
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 p3, v0

    if-nez v14, :cond_9d

    :goto_59
    move-object/from16 v14, v30

    goto :goto_5a

    :cond_9d
    move/from16 v23, v16

    move-object/from16 v14, v30

    goto :goto_5b

    :sswitch_40
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 p3, v0

    if-nez v15, :cond_9e

    :goto_5a
    move-object/from16 v15, v31

    goto/16 :goto_55

    :cond_9e
    move/from16 v23, v17

    :goto_5b
    move-object/from16 v15, v31

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    goto/16 :goto_5c

    :sswitch_41
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 p3, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-nez v23, :cond_9f

    goto/16 :goto_56

    :cond_9f
    const/16 v23, 0x2

    goto :goto_5c

    :sswitch_42
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v1, v41

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 p3, v0

    move-object/from16 v0, v40

    if-nez v23, :cond_a0

    goto/16 :goto_56

    :cond_a0
    const/16 v23, 0x1

    goto :goto_5c

    :sswitch_43
    move-object/from16 p3, v0

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a1

    goto/16 :goto_56

    :cond_a1
    const/16 v23, 0x0

    :goto_5c
    packed-switch v23, :pswitch_data_4

    move-object/from16 v32, v5

    move-object/from16 v5, v26

    goto :goto_5e

    :pswitch_36
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    :goto_5d
    move-object/from16 v32, v5

    move-object/from16 v5, v23

    goto :goto_5e

    :pswitch_37
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto :goto_5d

    :pswitch_38
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;-><init>()V

    goto :goto_5d

    :pswitch_39
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;-><init>()V

    goto :goto_5d

    :pswitch_3a
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;-><init>()V

    goto :goto_5d

    :pswitch_3b
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto :goto_5d

    :pswitch_3c
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;-><init>()V

    goto :goto_5d

    :pswitch_3d
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;-><init>()V

    goto :goto_5d

    :pswitch_3e
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;-><init>()V

    goto :goto_5d

    :pswitch_3f
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;-><init>()V

    goto :goto_5d

    :pswitch_40
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;-><init>()V

    goto :goto_5d

    :pswitch_41
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;-><init>()V

    goto :goto_5d

    :pswitch_42
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;-><init>()V

    goto :goto_5d

    :pswitch_43
    new-instance v23, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;

    invoke-direct/range {v23 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;-><init>()V

    goto :goto_5d

    :goto_5e
    if-nez v5, :cond_a2

    move-object/from16 v40, v0

    move-object/from16 v41, v1

    move-object/from16 v36, v6

    move-object/from16 v35, v7

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v30, v14

    move-object/from16 v31, v15

    move-object/from16 v0, p3

    goto/16 :goto_53

    :cond_a2
    move-object/from16 v39, v0

    iget v0, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    move-object/from16 v41, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ab

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_aa

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v2, v19, v2

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v31, v15

    move/from16 v33, v23

    move-wide/from16 v29, v24

    const/4 v0, 0x0

    const/16 v15, 0x64

    :goto_5f
    if-ge v0, v15, :cond_a9

    int-to-float v15, v0

    mul-float/2addr v15, v2

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    float-to-double v13, v15

    move/from16 p4, v2

    move-wide/from16 v36, v13

    move-object/from16 v2, v27

    iget-object v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move/from16 v38, v23

    const/high16 v27, 0x7fc00000    # Float.NaN

    :goto_60
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_a5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v49, v2

    move-object/from16 v2, v40

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v40, v14

    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v14, :cond_a4

    move-object/from16 v42, v14

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    cmpg-float v43, v14, v15

    if-gez v43, :cond_a3

    move/from16 v38, v14

    move-object/from16 v13, v42

    goto :goto_61

    :cond_a3
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_a4

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    move/from16 v27, v2

    :cond_a4
    :goto_61
    move-object/from16 v14, v40

    move-object/from16 v2, v49

    goto :goto_60

    :cond_a5
    move-object/from16 v49, v2

    if-eqz v13, :cond_a7

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a6

    move/from16 v27, v19

    :cond_a6
    sub-float v15, v15, v38

    sub-float v27, v27, v38

    div-float v15, v15, v27

    float-to-double v14, v15

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v13

    double-to-float v2, v13

    mul-float v2, v2, v27

    add-float v2, v2, v38

    float-to-double v13, v2

    goto :goto_62

    :cond_a7
    move-wide/from16 v13, v36

    :goto_62
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v15, 0x0

    aget-object v2, v2, v15

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v13, v14, v15}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    const/16 v48, 0x0

    move-object/from16 v27, v12

    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v42, v12

    move-wide/from16 v43, v13

    move-object/from16 v45, v2

    move-object/from16 v46, v15

    move-object/from16 v47, v1

    invoke-virtual/range {v42 .. v48}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    if-lez v0, :cond_a8

    const/4 v2, 0x1

    aget v12, v1, v2

    float-to-double v12, v12

    sub-double v12, v29, v12

    const/4 v2, 0x0

    aget v14, v1, v2

    float-to-double v14, v14

    sub-double v14, v24, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v12, v12

    add-float v33, v33, v12

    goto :goto_63

    :cond_a8
    const/4 v2, 0x0

    :goto_63
    aget v12, v1, v2

    float-to-double v12, v12

    const/4 v14, 0x1

    aget v15, v1, v14

    float-to-double v2, v15

    add-int/2addr v0, v14

    move-wide/from16 v29, v2

    move-wide/from16 v24, v12

    move-object/from16 v12, v27

    move-object/from16 v13, v34

    move-object/from16 v14, v35

    move-object/from16 v27, v49

    const/16 v15, 0x64

    move-object/from16 v3, p0

    move/from16 v2, p4

    goto/16 :goto_5f

    :cond_a9
    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v49, v27

    const/4 v14, 0x1

    move-object/from16 v27, v12

    move/from16 v2, v33

    goto :goto_66

    :cond_aa
    move v1, v2

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v31, v15

    move-object/from16 v49, v27

    const/4 v14, 0x1

    :goto_64
    move-object/from16 v27, v12

    goto :goto_65

    :cond_ab
    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v31, v15

    move-object/from16 v49, v27

    move v14, v1

    move v1, v2

    goto :goto_64

    :goto_65
    move v2, v1

    :goto_66
    iput-object v4, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    move-object/from16 v36, v6

    move-object/from16 v33, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v23, v27

    move-object/from16 v24, v34

    move-object/from16 v30, v35

    move-object/from16 v40, v39

    move-object/from16 v27, v49

    move-object/from16 v0, p3

    move-object/from16 v35, v7

    move-object/from16 v34, v8

    goto/16 :goto_53

    :cond_ac
    move-object v0, v3

    move-object/from16 v27, v23

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v36

    move-object/from16 v39, v40

    const/4 v14, 0x1

    move-object/from16 v34, v24

    move-object/from16 v35, v30

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v3, :cond_c3

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v12, "CUSTOM"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b1

    const/4 v13, 0x7

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v12, :cond_b0

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v15

    sget-object v13, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v15, v13, :cond_ad

    goto :goto_68

    :cond_ad
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-nez v5, :cond_ae

    goto :goto_68

    :cond_ae
    iget v13, v2, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v15, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    move-object/from16 p1, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    move-object/from16 p2, v4

    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iget v0, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    move-object/from16 v19, v3

    iget v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v47

    move-object/from16 p3, v2

    iget-object v2, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    move-object/from16 v23, v11

    new-instance v11, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move-object/from16 v42, v11

    move/from16 v43, v13

    move/from16 v44, v4

    move/from16 v45, v0

    move/from16 v46, v3

    invoke-direct/range {v42 .. v47}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    if-eq v1, v0, :cond_af

    iput v1, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    :cond_af
    iput v15, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    invoke-virtual {v5, v12}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V

    iput-object v14, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    move-object/from16 v11, v23

    goto :goto_68

    :cond_b0
    :goto_69
    move-object/from16 v0, p0

    goto/16 :goto_68

    :cond_b1
    move-object/from16 p1, v1

    move-object/from16 p3, v2

    move-object/from16 v19, v3

    move-object/from16 p2, v4

    move-object/from16 v23, v11

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5

    :goto_6a
    move-object/from16 v0, v23

    :goto_6b
    move-object/from16 v1, v27

    move-object/from16 v4, v31

    :goto_6c
    move-object/from16 v2, v34

    :goto_6d
    move-object/from16 v3, v35

    :goto_6e
    move-object/from16 v13, v39

    :goto_6f
    move-object/from16 v11, v41

    :goto_70
    const/4 v14, -0x1

    goto/16 :goto_74

    :sswitch_44
    const-string/jumbo v0, "wavePhase"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_6a

    :cond_b2
    const/16 v0, 0xd

    goto :goto_71

    :sswitch_45
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_6a

    :cond_b3
    const/16 v0, 0xc

    goto :goto_71

    :sswitch_46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_6a

    :cond_b4
    const/16 v0, 0xb

    goto :goto_71

    :sswitch_47
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_6a

    :cond_b5
    const/16 v0, 0xa

    goto :goto_71

    :sswitch_48
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_6a

    :cond_b6
    const/16 v0, 0x9

    :goto_71
    move v14, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    goto/16 :goto_72

    :sswitch_49
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_6a

    :cond_b7
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v13, v39

    move-object/from16 v11, v41

    const/16 v14, 0x8

    goto/16 :goto_74

    :sswitch_4a
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_6a

    :cond_b8
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v13, v39

    move-object/from16 v11, v41

    const/4 v14, 0x7

    goto/16 :goto_74

    :sswitch_4b
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    goto/16 :goto_6b

    :cond_b9
    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v13, v39

    move-object/from16 v11, v41

    const/4 v14, 0x6

    goto/16 :goto_74

    :sswitch_4c
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v4, v31

    if-nez v2, :cond_ba

    goto/16 :goto_6c

    :cond_ba
    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v13, v39

    move-object/from16 v11, v41

    const/4 v14, 0x5

    goto/16 :goto_74

    :sswitch_4d
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    move-object/from16 v4, v31

    goto/16 :goto_6d

    :cond_bb
    move/from16 v14, v16

    move-object/from16 v4, v31

    :goto_72
    move-object/from16 v3, v35

    goto :goto_73

    :sswitch_4e
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    move-object/from16 v4, v31

    goto/16 :goto_6e

    :cond_bc
    move/from16 v14, v17

    move-object/from16 v4, v31

    :goto_73
    move-object/from16 v13, v39

    move-object/from16 v11, v41

    goto :goto_74

    :sswitch_4f
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v13, v39

    if-nez v11, :cond_bd

    goto/16 :goto_6f

    :cond_bd
    move-object/from16 v11, v41

    const/4 v14, 0x2

    goto :goto_74

    :sswitch_50
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v11, v41

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_be

    move-object/from16 v13, v39

    goto/16 :goto_70

    :cond_be
    move-object/from16 v13, v39

    const/4 v14, 0x1

    goto :goto_74

    :sswitch_51
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v13, v39

    move-object/from16 v11, v41

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_bf

    goto/16 :goto_70

    :cond_bf
    const/4 v14, 0x0

    :goto_74
    packed-switch v14, :pswitch_data_5

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    const/high16 v12, 0x7fc00000    # Float.NaN

    move/from16 v34, v12

    move-object/from16 v12, p3

    goto :goto_76

    :pswitch_44
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    :goto_75
    move/from16 v34, v14

    goto :goto_76

    :pswitch_45
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    goto :goto_75

    :pswitch_46
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    goto :goto_75

    :pswitch_47
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    goto :goto_75

    :pswitch_48
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    goto :goto_75

    :pswitch_49
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    goto :goto_75

    :pswitch_4a
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    goto :goto_75

    :pswitch_4b
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    goto :goto_75

    :pswitch_4c
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    goto :goto_75

    :pswitch_4d
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    goto :goto_75

    :pswitch_4e
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    goto :goto_75

    :pswitch_4f
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    goto :goto_75

    :pswitch_50
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    goto :goto_75

    :pswitch_51
    move-object/from16 v12, p3

    iget v14, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    goto :goto_75

    :goto_76
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_c0

    const/4 v14, 0x1

    move-object/from16 v27, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v11

    move-object v2, v12

    move-object/from16 v39, v13

    move-object/from16 v3, v19

    :goto_77
    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object v11, v0

    goto/16 :goto_69

    :cond_c0
    move-object/from16 v14, v19

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-nez v5, :cond_c1

    move-object/from16 v27, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v11

    move-object v2, v12

    move-object/from16 v39, v13

    move-object v3, v14

    const/4 v14, 0x1

    goto :goto_77

    :cond_c1
    iget v15, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v23, v0

    iget v0, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    move-object/from16 v27, v1

    iget-object v1, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    move-object/from16 v26, v2

    iget v2, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    move-object/from16 v35, v3

    iget v3, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    move-object/from16 v19, v4

    iget v4, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    move-object/from16 v36, v6

    iget v6, v12, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    move-object/from16 v24, v7

    iget-object v7, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    move-object/from16 v25, v8

    new-instance v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move-object/from16 v29, v8

    move/from16 v30, v15

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v6

    invoke-direct/range {v29 .. v34}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c2

    iput v2, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    :cond_c2
    iput v0, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    iput-object v1, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v41, v11

    move-object v2, v12

    move-object/from16 v39, v13

    move-object v3, v14

    move-object/from16 v31, v19

    move-object/from16 v11, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v34, v26

    move-object/from16 v6, v36

    const/4 v14, 0x1

    goto/16 :goto_68

    :cond_c3
    move-object/from16 p1, v1

    move-object/from16 v36, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v23, v11

    move-object/from16 v19, v31

    move-object/from16 v26, v34

    move-object/from16 v13, v39

    move-object/from16 v11, v41

    const/4 v3, -0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v41, v11

    move-object/from16 v39, v13

    move-object/from16 v31, v19

    move-object/from16 v11, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v34, v26

    move-object/from16 v6, v36

    goto/16 :goto_67

    :cond_c4
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup()V

    goto :goto_78

    :cond_c5
    return-void

    nop

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
        -0x4a771f66 -> :sswitch_1d
        -0x4a771f65 -> :sswitch_1c
        -0x490b9c39 -> :sswitch_1b
        -0x490b9c38 -> :sswitch_1a
        -0x490b9c37 -> :sswitch_19
        -0x3bab3dd3 -> :sswitch_18
        -0x3621dfb2 -> :sswitch_17
        -0x3621dfb1 -> :sswitch_16
        -0x2d5a2d1e -> :sswitch_15
        -0x2d5a2d1d -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
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
        -0x266f082 -> :sswitch_21
        -0x42d1a3 -> :sswitch_20
        0x2382115 -> :sswitch_1f
        0x589b15e -> :sswitch_1e
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
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x4a771f66 -> :sswitch_35
        -0x4a771f65 -> :sswitch_34
        -0x490b9c39 -> :sswitch_33
        -0x490b9c38 -> :sswitch_32
        -0x490b9c37 -> :sswitch_31
        -0x3bab3dd3 -> :sswitch_30
        -0x3621dfb2 -> :sswitch_2f
        -0x3621dfb1 -> :sswitch_2e
        -0x266f082 -> :sswitch_2d
        -0x42d1a3 -> :sswitch_2c
        0x2382115 -> :sswitch_2b
        0x589b15e -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x4a771f66 -> :sswitch_43
        -0x4a771f65 -> :sswitch_42
        -0x490b9c39 -> :sswitch_41
        -0x490b9c38 -> :sswitch_40
        -0x490b9c37 -> :sswitch_3f
        -0x3bab3dd3 -> :sswitch_3e
        -0x3621dfb2 -> :sswitch_3d
        -0x3621dfb1 -> :sswitch_3c
        -0x2f893320 -> :sswitch_3b
        -0x266f082 -> :sswitch_3a
        -0x42d1a3 -> :sswitch_39
        0x2382115 -> :sswitch_38
        0x589b15e -> :sswitch_37
        0x94e04ec -> :sswitch_36
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x4a771f66 -> :sswitch_51
        -0x4a771f65 -> :sswitch_50
        -0x490b9c39 -> :sswitch_4f
        -0x490b9c38 -> :sswitch_4e
        -0x490b9c37 -> :sswitch_4d
        -0x3bab3dd3 -> :sswitch_4c
        -0x3621dfb2 -> :sswitch_4b
        -0x3621dfb1 -> :sswitch_4a
        -0x266f082 -> :sswitch_49
        -0x42d1a3 -> :sswitch_48
        0x2382115 -> :sswitch_47
        0x589b15e -> :sswitch_46
        0x94e04ec -> :sswitch_45
        0x5b327a02 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
