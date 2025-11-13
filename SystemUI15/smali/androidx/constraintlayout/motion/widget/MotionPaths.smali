.class public final Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final sNames:[Ljava/lang/String;


# instance fields
.field public mAnimateRelativeTo:I

.field public final mAttributes:Ljava/util/LinkedHashMap;

.field public mDrawPath:I

.field public mHeight:F

.field public mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field public final mMode:I

.field public mPathMotionArc:I

.field public mPathRotate:F

.field public mPosition:F

.field public mRelativeAngle:F

.field public mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mTempDelta:[D

.field public mTempValue:[D

.field public mTime:F

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "height"

    const-string v5, "pathRotate"

    const-string v0, "position"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "width"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v6, -0x1

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v5, 0x12

    new-array v7, v5, [D

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v5, v5, [D

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    const/4 v7, 0x2

    const/high16 v8, 0x42c80000    # 100.0f

    if-eq v5, v6, :cond_7

    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_1
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v8, v9

    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float/2addr v10, v6

    add-float/2addr v10, v11

    float-to-int v8, v10

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    if-eq v8, v7, :cond_4

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_2
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v6, v7, v5, v7}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_3
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v3, v5, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    goto :goto_6

    :cond_4
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-static {v5, v6, v4, v6}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v5

    goto :goto_4

    :cond_5
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v7

    :goto_4
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-static {v3, v5, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v3

    goto :goto_5

    :cond_6
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_5
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    :goto_6
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_7
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v6, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v5, v6, :cond_1c

    if-eq v5, v7, :cond_17

    const/4 v6, 0x3

    if-eq v5, v6, :cond_e

    iget v5, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_7

    :cond_8
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_7
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v5

    goto :goto_8

    :cond_9
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_8
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v12, v8, v11

    iget v13, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v15, v13, v14

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v17, v11, v10

    add-float v17, v17, v9

    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v18, v14, v10

    add-float v18, v18, v4

    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v8, v10

    add-float/2addr v8, v2

    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v13, v10

    add-float/2addr v13, v2

    sub-float v8, v8, v17

    sub-float v13, v13, v18

    mul-float v2, v8, v5

    add-float/2addr v2, v9

    mul-float/2addr v12, v6

    div-float v3, v12, v10

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v2, v13, v5

    add-float/2addr v2, v4

    mul-float/2addr v15, v7

    div-float v4, v15, v10

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v11, v12

    float-to-int v2, v11

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v14, v15

    float-to-int v2, v14

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    goto :goto_9

    :cond_a
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_9
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    :goto_a
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_b

    :cond_c
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_b
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_c

    :cond_d
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    const/4 v7, 0x0

    :goto_c
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v11, p4

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    mul-float/2addr v9, v13

    add-float/2addr v9, v2

    sub-float/2addr v9, v3

    float-to-int v2, v9

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v2, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float/2addr v8, v6

    add-float/2addr v8, v2

    mul-float/2addr v13, v5

    add-float/2addr v13, v8

    sub-float/2addr v13, v4

    float-to-int v2, v13

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_e
    move-object v11, v2

    iget v2, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    goto :goto_d

    :cond_f
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_d
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v2

    goto :goto_e

    :cond_10
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_e
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v8, v6, v7

    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v12, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v13, v9, v12

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v14, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v15, v7, v10

    add-float/2addr v15, v14

    iget v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v17, v12, v10

    add-float v17, v17, v1

    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v6, v10

    add-float/2addr v6, v11

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v9, v10

    add-float/2addr v9, v3

    cmpl-float v3, v15, v6

    if-lez v3, :cond_11

    move/from16 v19, v15

    move v15, v6

    move/from16 v6, v19

    :cond_11
    cmpl-float v3, v17, v9

    if-lez v3, :cond_12

    goto :goto_f

    :cond_12
    move/from16 v19, v17

    move/from16 v17, v9

    move/from16 v9, v19

    :goto_f
    sub-float/2addr v6, v15

    sub-float v17, v17, v9

    mul-float v3, v6, v2

    add-float/2addr v3, v14

    mul-float/2addr v8, v4

    div-float v4, v8, v10

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v3, v17, v2

    add-float/2addr v3, v1

    mul-float/2addr v13, v5

    div-float v1, v13, v10

    sub-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v7, v8

    float-to-int v3, v7

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    move-object/from16 v5, p3

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_10

    :cond_13
    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_10
    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    goto :goto_11

    :cond_14
    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    :goto_11
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_12

    :cond_15
    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_12
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_13

    :cond_16
    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    const/4 v8, 0x0

    :goto_13
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v11, p4

    iget v8, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v3, v6

    add-float/2addr v3, v8

    mul-float v9, v9, v17

    add-float/2addr v9, v3

    sub-float/2addr v9, v4

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v3, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    mul-float v17, v17, v2

    add-float v17, v17, v6

    sub-float v1, v17, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_17
    move-object v5, v1

    move-object v11, v2

    iget v1, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_14

    :cond_18
    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_14
    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v1

    goto :goto_15

    :cond_19
    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_15
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v8, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float v9, v6, v8

    iget v12, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v13, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float v14, v12, v13

    iget v15, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v15, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v15, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float v16, v8, v10

    add-float v16, v16, v15

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float v17, v13, v10

    add-float v17, v17, v11

    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    div-float/2addr v6, v10

    add-float/2addr v6, v7

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    div-float/2addr v12, v10

    add-float/2addr v12, v3

    sub-float v6, v6, v16

    sub-float v12, v12, v17

    mul-float/2addr v6, v1

    add-float/2addr v6, v15

    mul-float/2addr v9, v2

    div-float v2, v9, v10

    sub-float/2addr v6, v2

    float-to-int v2, v6

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v12, v1

    add-float/2addr v12, v11

    mul-float/2addr v14, v4

    div-float v1, v14, v10

    sub-float/2addr v12, v1

    float-to-int v1, v12

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v13, v14

    float-to-int v1, v13

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    const/4 v1, 0x2

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    :cond_1a
    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    float-to-int v1, v1

    sub-int v1, p2, v1

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    :cond_1b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_1c
    move-object v5, v1

    move-object v11, v2

    iget v1, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v1

    goto :goto_16

    :cond_1d
    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_16
    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v1

    goto :goto_17

    :cond_1e
    iget v4, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_17
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v8, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v7, v8

    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v9, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v8, v9

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_18

    :cond_1f
    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_18
    iget v9, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v12, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float v13, v12, v10

    add-float/2addr v13, v9

    iget v14, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v15, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float v17, v15, v10

    add-float v17, v17, v14

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v11, v10

    add-float/2addr v11, v6

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v3, v10

    add-float/2addr v3, v6

    sub-float/2addr v11, v13

    sub-float v3, v3, v17

    mul-float v6, v11, v1

    add-float/2addr v9, v6

    mul-float/2addr v7, v2

    div-float v2, v7, v10

    sub-float/2addr v9, v2

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float/2addr v1, v3

    add-float/2addr v14, v1

    mul-float/2addr v8, v4

    div-float v4, v8, v10

    sub-float/2addr v14, v4

    float-to-int v9, v14

    int-to-float v9, v9

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v12, v7

    float-to-int v7, v12

    int-to-float v7, v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    add-float/2addr v15, v8

    float-to-int v7, v15

    int-to-float v7, v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v9, 0x0

    goto :goto_19

    :cond_20
    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_19
    neg-float v3, v3

    mul-float/2addr v3, v9

    mul-float/2addr v11, v9

    const/4 v7, 0x1

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v7, p4

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v8, v6

    sub-float/2addr v8, v2

    float-to-int v2, v8

    int-to-float v2, v2

    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v6, v1

    sub-float/2addr v6, v4

    float-to-int v1, v6

    int-to-float v1, v1

    add-float/2addr v2, v3

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v1, v11

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v1, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method public static diff(FF)Z
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static setDpDt(FF[F[I[D[D)V
    .locals 14

    move v0, p0

    move v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v5, v4

    :goto_0
    array-length v10, v2

    const/4 v11, 0x1

    if-ge v5, v10, :cond_4

    aget-wide v12, p4, v5

    double-to-float v10, v12

    aget-wide v12, p5, v5

    aget v12, v2, v5

    if-eq v12, v11, :cond_3

    const/4 v11, 0x2

    if-eq v12, v11, :cond_2

    const/4 v11, 0x3

    if-eq v12, v11, :cond_1

    const/4 v11, 0x4

    if-eq v12, v11, :cond_0

    goto :goto_1

    :cond_0
    move v9, v10

    goto :goto_1

    :cond_1
    move v7, v10

    goto :goto_1

    :cond_2
    move v8, v10

    goto :goto_1

    :cond_3
    move v6, v10

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    mul-float v2, v3, v7

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float/2addr v6, v2

    mul-float v2, v3, v9

    div-float/2addr v2, v5

    sub-float/2addr v8, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v7, v2

    mul-float/2addr v9, v2

    add-float/2addr v7, v6

    add-float/2addr v9, v8

    sub-float v5, v2, v0

    mul-float/2addr v5, v6

    invoke-static {v7, p0, v5, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    aput v0, p2, v4

    sub-float/2addr v2, v1

    mul-float/2addr v2, v8

    invoke-static {v9, p1, v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    aput v0, p2, v11

    return-void
.end method


# virtual methods
.method public final applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 4

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final getCenter(D[I[D[FI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    aget-wide v11, p4, v7

    double-to-float v8, v11

    aget v11, v1, v7

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_1

    const/4 v9, 0x4

    if-eq v11, v9, :cond_0

    goto :goto_1

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    new-array v7, v9, [F

    new-array v8, v9, [F

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    aget v0, v7, v6

    aget v6, v7, v10

    float-to-double v7, v0

    float-to-double v11, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    add-double/2addr v13, v7

    div-float v0, v4, v1

    float-to-double v7, v0

    sub-double/2addr v13, v7

    double-to-float v0, v13

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v11

    sub-double/2addr v6, v2

    div-float v2, v5, v1

    float-to-double v2, v2

    sub-double/2addr v6, v2

    double-to-float v3, v6

    move v2, v0

    :cond_5
    div-float/2addr v4, v1

    add-float/2addr v4, v2

    const/4 v0, 0x0

    add-float/2addr v4, v0

    aput v4, p5, p6

    add-int/lit8 v2, p6, 0x1

    div-float/2addr v5, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v0

    aput v5, p5, v2

    return-void
.end method

.method public final setBounds(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    return-void
.end method

.method public final setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    sub-float/2addr v1, v0

    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-double v0, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    sub-float/2addr v4, v3

    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr p2, v2

    sub-float/2addr v4, p2

    float-to-double v2, v4

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    :goto_0
    return-void
.end method
