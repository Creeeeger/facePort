.class public final Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
.method public final calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v6, p3

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-instance v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    move-object v3, v1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    iget v10, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-ge v3, v5, :cond_9

    if-eq v3, v4, :cond_2

    if-eq v3, v6, :cond_1

    if-eq v3, v7, :cond_0

    iget-object v5, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_0
    iget-object v5, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_1
    iget-object v5, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_2
    iget-object v5, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    :goto_1
    if-eq v3, v4, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v7, :cond_3

    iget-object v11, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_3
    iget-object v11, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_4
    iget-object v11, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_5
    iget-object v11, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    :goto_2
    aget-object v12, v9, v3

    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v13}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v5

    invoke-virtual {v11, v12, v10, v5}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FF)V

    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v10, v5, 0x4

    mul-int/lit8 v10, v10, 0x5a

    int-to-float v10, v10

    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v11, v11, v3

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    if-eq v3, v4, :cond_8

    if-eq v3, v6, :cond_7

    if-eq v3, v7, :cond_6

    iget v6, v11, Landroid/graphics/RectF;->right:F

    iget v7, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_6
    iget v6, v11, Landroid/graphics/RectF;->left:F

    iget v7, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    iget v6, v11, Landroid/graphics/RectF;->left:F

    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    iget v6, v11, Landroid/graphics/RectF;->right:F

    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v11, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v6, v9, v3

    iget v7, v6, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v7, v8, v2

    iget v6, v6, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v6, v8, v4

    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    aget v7, v8, v2

    aget v4, v8, v4

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v3, v4, v3

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v3, v5

    goto/16 :goto_0

    :cond_9
    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_13

    aget-object v12, v9, v3

    iget v13, v12, Lcom/google/android/material/shape/ShapePath;->startX:F

    aput v13, v8, v2

    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->startY:F

    aput v12, v8, v4

    iget-object v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v12, v12, v3

    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v3, :cond_a

    iget-object v12, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    aget v13, v8, v2

    aget v14, v8, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_a
    iget-object v12, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    aget v13, v8, v2

    aget v14, v8, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v12, v9, v3

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v13, v13, v3

    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v12, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v12, :cond_b

    aget-object v13, v9, v3

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v3

    move-object v15, v12

    check-cast v15, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    iget-object v15, v15, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, v15, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v5, v15, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iget v15, v13, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    invoke-virtual {v13, v15}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15, v14}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v14, Ljava/util/ArrayList;

    iget-object v6, v13, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v6, v13, v14, v15}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    aput-object v6, v5, v3

    :cond_b
    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v6, v5, 0x4

    aget-object v13, v9, v3

    iget v14, v13, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v14, v8, v2

    iget v13, v13, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v13, v8, v4

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v13, v13, v3

    invoke-virtual {v13, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v13, v9, v6

    iget v14, v13, Lcom/google/android/material/shape/ShapePath;->startX:F

    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aput v14, v15, v2

    iget v13, v13, Lcom/google/android/material/shape/ShapePath;->startY:F

    aput v13, v15, v4

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v13, v13, v6

    invoke-virtual {v13, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v13, v8, v2

    aget v14, v15, v2

    sub-float/2addr v13, v14

    float-to-double v13, v13

    aget v16, v8, v4

    aget v15, v15, v4

    sub-float v15, v16, v15

    move/from16 p4, v5

    float-to-double v4, v15

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3a83126f    # 0.001f

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    aget-object v14, v9, v3

    iget v15, v14, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v15, v8, v2

    iget v14, v14, Lcom/google/android/material/shape/ShapePath;->endY:F

    const/4 v15, 0x1

    aput v14, v8, v15

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v14, v14, v3

    invoke-virtual {v14, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v3, v15, :cond_c

    if-eq v3, v7, :cond_c

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    aget v14, v8, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    goto :goto_6

    :cond_c
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    aget v14, v8, v2

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    :goto_6
    const/high16 v14, 0x43870000    # 270.0f

    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v15, v5, v5, v14, v5}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    const/4 v5, 0x1

    if-eq v3, v5, :cond_f

    const/4 v5, 0x2

    if-eq v3, v5, :cond_e

    if-eq v3, v7, :cond_d

    iget-object v14, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_d
    iget-object v14, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_e
    iget-object v14, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_f
    const/4 v5, 0x2

    iget-object v14, v11, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    :goto_7
    invoke-virtual {v14, v4, v13, v10, v15}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v15, v4, v13}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    const/4 v6, 0x1

    goto :goto_9

    :cond_11
    :goto_8
    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v4, v6, v13}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget v4, v15, Lcom/google/android/material/shape/ShapePath;->startX:F

    aput v4, v8, v2

    iget v4, v15, Lcom/google/android/material/shape/ShapePath;->startY:F

    const/4 v6, 0x1

    aput v4, v8, v6

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    aget v13, v8, v2

    aget v14, v8, v6

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v15, v4, v13}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_a

    :goto_9
    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    iget-object v13, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    invoke-virtual {v15, v4, v13}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_a
    if-eqz v12, :cond_12

    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    check-cast v12, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    iget-object v12, v12, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v13, v12, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    add-int/lit8 v14, v3, 0x4

    invoke-virtual {v13, v14, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v12, v12, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iget v13, v15, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    invoke-virtual {v15, v13}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v14, v15, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v14, v15, v4, v13}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    aput-object v14, v12, v3

    :cond_12
    move/from16 v3, p4

    move v4, v6

    move v6, v5

    const/4 v5, 0x4

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

    move-object/from16 v2, p5

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

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
