.class public final Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final boundsPath:Landroid/graphics/Path;

.field public final cornerPath:Landroid/graphics/Path;

.field public final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field public final cornerTransforms:[Landroid/graphics/Matrix;

.field public final edgeIntersectionCheckEnabled:Z

.field public final edgePath:Landroid/graphics/Path;

.field public final edgeTransforms:[Landroid/graphics/Matrix;

.field public final overlappedEdgePath:Landroid/graphics/Path;

.field public final pointF:Landroid/graphics/PointF;

.field public final scratch:[F

.field public final scratch2:[F

.field public final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/MaterialShapeDrawable$1;Landroid/graphics/Path;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    if-ge v6, v8, :cond_9

    if-eq v6, v7, :cond_2

    if-eq v6, v9, :cond_1

    if-eq v6, v10, :cond_0

    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_0
    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_1
    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_2
    iget-object v8, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    :goto_1
    if-eq v6, v7, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v10, :cond_3

    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_3
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_4
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_5
    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    :goto_2
    aget-object v14, v12, v6

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v2}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v8

    move/from16 v15, p2

    invoke-virtual {v13, v14, v15, v8}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FF)V

    add-int/lit8 v8, v6, 0x1

    rem-int/lit8 v13, v8, 0x4

    mul-int/lit8 v13, v13, 0x5a

    int-to-float v13, v13

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    if-eq v6, v7, :cond_8

    if-eq v6, v9, :cond_7

    if-eq v6, v10, :cond_6

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_6
    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v9, v9, v6

    iget-object v10, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    iget v14, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v14, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v9, v9, v6

    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v9, v12, v6

    iget v10, v9, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v10, v11, v5

    iget v9, v9, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v9, v11, v7

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v9, v9, v6

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v9, v9, v6

    aget v10, v11, v5

    aget v7, v11, v7

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v7, v6

    invoke-virtual {v6, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v6, v8

    goto/16 :goto_0

    :cond_9
    move v6, v5

    :goto_4
    if-ge v6, v8, :cond_13

    aget-object v13, v12, v6

    iget v14, v13, Lcom/google/android/material/shape/ShapePath;->startX:F

    aput v14, v11, v5

    iget v13, v13, Lcom/google/android/material/shape/ShapePath;->startY:F

    aput v13, v11, v7

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v13, v13, v6

    invoke-virtual {v13, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v6, :cond_a

    aget v13, v11, v5

    aget v14, v11, v7

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_a
    aget v13, v11, v5

    aget v14, v11, v7

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v13, v12, v6

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14, v4}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v3, :cond_b

    aget-object v13, v12, v6

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v6

    iget-object v15, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v8, v15, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v6, v5}, Ljava/util/BitSet;->set(IZ)V

    iget-object v8, v15, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iget v15, v13, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    invoke-virtual {v13, v15}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15, v14}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v14, Ljava/util/ArrayList;

    iget-object v13, v13, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v13, v14, v15}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    aput-object v13, v8, v6

    :cond_b
    add-int/lit8 v8, v6, 0x1

    rem-int/lit8 v13, v8, 0x4

    aget-object v14, v12, v6

    iget v15, v14, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v15, v11, v5

    iget v14, v14, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v14, v11, v7

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v6

    invoke-virtual {v14, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v14, v12, v13

    iget v15, v14, Lcom/google/android/material/shape/ShapePath;->startX:F

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aput v15, v9, v5

    iget v14, v14, Lcom/google/android/material/shape/ShapePath;->startY:F

    aput v14, v9, v7

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v13

    invoke-virtual {v14, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v14, v11, v5

    aget v15, v9, v5

    sub-float/2addr v14, v15

    float-to-double v14, v14

    aget v16, v11, v7

    aget v9, v9, v7

    sub-float v9, v16, v9

    move/from16 p2, v8

    float-to-double v7, v9

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3a83126f    # 0.001f

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aget-object v9, v12, v6

    iget v14, v9, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v14, v11, v5

    iget v9, v9, Lcom/google/android/material/shape/ShapePath;->endY:F

    const/4 v14, 0x1

    aput v9, v11, v14

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v9, v9, v6

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v6, v14, :cond_c

    if-eq v6, v10, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    aget v15, v11, v14

    sub-float/2addr v9, v15

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    goto :goto_6

    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    aget v14, v11, v5

    sub-float/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    :goto_6
    const/high16 v9, 0x43870000    # 270.0f

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v14, v8, v9, v8}, Lcom/google/android/material/shape/ShapePath;->reset(FFF)V

    const/4 v9, 0x1

    if-eq v6, v9, :cond_f

    const/4 v9, 0x2

    if-eq v6, v9, :cond_e

    if-eq v6, v10, :cond_d

    iget-object v15, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_d
    iget-object v15, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_e
    iget-object v15, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_f
    const/4 v9, 0x2

    iget-object v15, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    :goto_7
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v7, v8}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v14, v7, v8}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v13}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_8

    :cond_10
    const/4 v8, 0x1

    goto :goto_9

    :cond_11
    :goto_8
    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v7, v8, v13}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget v7, v14, Lcom/google/android/material/shape/ShapePath;->startX:F

    aput v7, v11, v5

    iget v7, v14, Lcom/google/android/material/shape/ShapePath;->startY:F

    const/4 v8, 0x1

    aput v7, v11, v8

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    aget v13, v11, v5

    aget v15, v11, v8

    invoke-virtual {v7, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v14, v7, v13}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_a

    :goto_9
    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    invoke-virtual {v14, v7, v4}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_a
    if-eqz v3, :cond_12

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v13, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v15, v13, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    add-int/lit8 v8, v6, 0x4

    invoke-virtual {v15, v8, v5}, Ljava/util/BitSet;->set(IZ)V

    iget-object v8, v13, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iget v13, v14, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    invoke-virtual {v14, v13}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13, v7}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v7, Ljava/util/ArrayList;

    iget-object v14, v14, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v14, v7, v13}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    aput-object v14, v8, v6

    :cond_12
    move/from16 v6, p2

    const/4 v7, 0x1

    const/4 v8, 0x4

    goto/16 :goto_4

    :cond_13
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v0, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    return-void
.end method

.method public final pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object p2, v1, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
