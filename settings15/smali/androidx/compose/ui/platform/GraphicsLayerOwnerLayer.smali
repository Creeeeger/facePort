.class public final Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;


# instance fields
.field public final context:Landroidx/compose/ui/graphics/GraphicsContext;

.field public density:Landroidx/compose/ui/unit/Density;

.field public drawBlock:Lkotlin/jvm/functions/Function2;

.field public drawnWithEnabledZ:Z

.field public graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public invalidateParentLayer:Lkotlin/jvm/functions/Function0;

.field public inverseMatrixCache:[F

.field public isDestroyed:Z

.field public isDirty:Z

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public final matrixCache:[F

.field public mutatedFields:I

.field public outline:Landroidx/compose/ui/graphics/Outline;

.field public final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public size:J

.field public transformOrigin:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const p1, 0x7fffffff

    invoke-static {p1, p1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    invoke-static {}, Landroidx/compose/ui/unit/DensityKt;->Density$default()Landroidx/compose/ui/unit/DensityImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-virtual {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)V

    :cond_1
    return-void
.end method

.method public final drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateDisplayList()V

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v5

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v7

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v10

    iget-object v10, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v11, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v11, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    iput-object p2, v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v4, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {p0, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p0, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {p0, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    iput-object v10, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {p1, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p1, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {p1, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    iput-object v10, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    throw p0
.end method

.method public final getInverseMatrix-3i98HWw()[F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getMatrix-sQKQjiQ()[F
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    const-wide v4, 0x7fffffff7fffffffL

    and-long/2addr v4, v2

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v2, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/16 v4, 0x21

    shr-long v5, v2, v4

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    shl-long/2addr v2, v7

    shr-long/2addr v2, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    or-long/2addr v2, v5

    shr-long v4, v2, v7

    long-to-int v4, v4

    int-to-float v4, v4

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    neg-float v5, v5

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    neg-float v6, v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object v4

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationX:F

    iget v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationY:F

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationX:F

    float-to-double v5, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x1

    aget v13, v4, v6

    const/4 v14, 0x2

    aget v15, v4, v14

    mul-float v16, v13, v12

    mul-float v17, v15, v5

    sub-float v16, v16, v17

    mul-float/2addr v13, v5

    mul-float/2addr v15, v12

    add-float/2addr v15, v13

    const/4 v13, 0x5

    aget v17, v4, v13

    const/16 v18, 0x6

    aget v19, v4, v18

    mul-float v20, v17, v12

    mul-float v21, v19, v5

    sub-float v20, v20, v21

    mul-float v17, v17, v5

    mul-float v19, v19, v12

    add-float v19, v19, v17

    const/16 v17, 0x9

    aget v21, v4, v17

    const/16 v22, 0xa

    aget v23, v4, v22

    mul-float v24, v21, v12

    mul-float v25, v23, v5

    sub-float v24, v24, v25

    mul-float v21, v21, v5

    mul-float v23, v23, v12

    add-float v23, v23, v21

    const/16 v21, 0xd

    aget v25, v4, v21

    const/16 v26, 0xe

    aget v27, v4, v26

    mul-float v28, v25, v12

    mul-float v29, v27, v5

    sub-float v28, v28, v29

    mul-float v25, v25, v5

    mul-float v27, v27, v12

    add-float v27, v27, v25

    aput v16, v4, v6

    aput v15, v4, v14

    aput v20, v4, v13

    aput v19, v4, v18

    aput v24, v4, v17

    aput v23, v4, v22

    aput v28, v4, v21

    aput v27, v4, v26

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationY:F

    float-to-double v5, v5

    mul-double/2addr v5, v8

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    aget v9, v4, v6

    aget v10, v4, v14

    mul-float v11, v9, v8

    mul-float v12, v10, v5

    add-float/2addr v12, v11

    neg-float v9, v9

    mul-float/2addr v9, v5

    mul-float/2addr v10, v8

    add-float/2addr v10, v9

    const/4 v9, 0x4

    aget v11, v4, v9

    aget v13, v4, v18

    mul-float v15, v11, v8

    mul-float v16, v13, v5

    add-float v16, v16, v15

    neg-float v11, v11

    mul-float/2addr v11, v5

    mul-float/2addr v13, v8

    add-float/2addr v13, v11

    const/16 v11, 0x8

    aget v15, v4, v11

    aget v17, v4, v22

    mul-float v19, v15, v8

    mul-float v20, v17, v5

    add-float v20, v20, v19

    neg-float v15, v15

    mul-float/2addr v15, v5

    mul-float v17, v17, v8

    add-float v17, v17, v15

    const/16 v15, 0xc

    aget v7, v4, v15

    aget v19, v4, v26

    mul-float v21, v7, v8

    mul-float v23, v19, v5

    add-float v23, v23, v21

    neg-float v7, v7

    mul-float/2addr v7, v5

    mul-float v19, v19, v8

    add-float v19, v19, v7

    aput v12, v4, v6

    aput v10, v4, v14

    aput v16, v4, v9

    aput v13, v4, v18

    aput v20, v4, v11

    aput v17, v4, v22

    aput v23, v4, v15

    aput v19, v4, v26

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    invoke-static {v5, v4}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl(F[F)V

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    iget v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v1, v6}, Landroidx/compose/ui/graphics/Matrix;->scale-impl([FFFF)V

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object v1

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method public final inverseTransform-58bKbWc([F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    :cond_0
    return-void
.end method

.method public final isInLayer-k-4lQ0M(J)Z
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object p2, p2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-boolean p2, p2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Outline;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2, p2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInOutline(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :goto_0
    return-void
.end method

.method public final mapOffset-8S9VItk(JZ)J
    .locals 0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7f8000007f800000L    # 1.404448428688076E306

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final move--gyyYBs(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iput-wide p1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    iget-wide v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    invoke-virtual {v3, p1, p2, v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setPosition-VbeCjmY(JJ)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, p0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final resize-ozmzZPI(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    iget-boolean p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method public final reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    sget p1, Landroidx/compose/ui/graphics/TransformOrigin;->$r8$clinit:I

    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    const p1, 0x7fffffff

    invoke-static {p1, p1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    iput v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layer should have been released before reuse"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "currently reuse is only supported when we manage the layer lifecycle"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final transform-58bKbWc([F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    return-void
.end method

.method public final updateDisplayList()V
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v2

    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    iput-wide v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setPivotOffset-k-4lQ0M(J)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateOutline()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    new-instance v5, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$updateDisplayList$1;

    invoke-direct {v5, p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$updateDisplayList$1;-><init>(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)V

    iget-wide v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v6

    iget-object v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    if-nez v6, :cond_3

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-virtual {v7, v8, v9, v3, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setPosition-VbeCjmY(JJ)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v8, v9, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_2

    iput-wide v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-virtual {v7, v8, v9, v3, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setPosition-VbeCjmY(JJ)V

    iput-boolean v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    :cond_2
    iput-boolean v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :cond_3
    iput-object v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->recordInternal()V

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_4
    return-void
.end method

.method public final updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 10

    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iget v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    or-int/2addr v0, v1

    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    iget-wide v2, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    iput-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v3, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v4, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iput v3, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    :cond_2
    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v3, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v4, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iput v3, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    :cond_4
    :goto_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v3, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v4, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iput v3, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    :cond_6
    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v3, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationX:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v4, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationX:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    iput v3, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationX:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    :cond_8
    :goto_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v3, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationY:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v4, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationY:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    iput v3, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationY:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    :cond_a
    :goto_4
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    iget-object v6, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v7, v6, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    cmpg-float v7, v7, v5

    const/4 v8, 0x0

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    iput v5, v6, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    iget-object v7, v6, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7, v5}, Landroid/graphics/RenderNode;->setElevation(F)Z

    iget-boolean v7, v6, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    if-nez v7, :cond_d

    cmpl-float v5, v5, v8

    if-lez v5, :cond_c

    goto :goto_5

    :cond_c
    move v5, v4

    goto :goto_6

    :cond_d
    :goto_5
    move v5, v3

    :goto_6
    invoke-virtual {v6, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    iput-boolean v3, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :goto_7
    iget v2, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_e

    iget-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_e
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    iget-wide v7, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->ambientShadowColor:J

    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v7, v7, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    iput-wide v5, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->ambientShadowColor:J

    :cond_f
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    iget-wide v7, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->spotShadowColor:J

    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v7, v7, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    iput-wide v5, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->spotShadowColor:J

    :cond_10
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v6, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    cmpg-float v6, v6, v5

    if-nez v6, :cond_11

    goto :goto_8

    :cond_11
    iput v5, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v5}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    :cond_12
    :goto_8
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationX:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v6, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationX:F

    cmpg-float v6, v6, v5

    if-nez v6, :cond_13

    goto :goto_9

    :cond_13
    iput v5, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationX:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v5}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    :cond_14
    :goto_9
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_16

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationY:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v6, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationY:F

    cmpg-float v6, v6, v5

    if-nez v6, :cond_15

    goto :goto_a

    :cond_15
    iput v5, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationY:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v5}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    :cond_16
    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v6, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    cmpg-float v6, v6, v5

    if-nez v6, :cond_17

    goto :goto_b

    :cond_17
    iput v5, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v5}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    :cond_18
    :goto_b
    if-eqz v1, :cond_19

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v2

    iget-wide v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget-wide v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v5

    iget-wide v6, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v2, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    iget-wide v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_19

    iput-wide v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setPivotOffset-k-4lQ0M(J)V

    :cond_19
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v2, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    iget-object v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-boolean v6, v5, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    if-eq v6, v2, :cond_1a

    invoke-virtual {v5, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    iput-boolean v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :cond_1a
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    :cond_1b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v2, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->compositingStrategy:I

    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v4

    goto :goto_c

    :cond_1c
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v3

    goto :goto_c

    :cond_1d
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    :goto_c
    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    invoke-static {v2, v5}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_20

    iput v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    invoke-static {v5, v3}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x3

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    invoke-static {v5, v2}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_1e

    iget-object v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    iget v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    goto :goto_d

    :cond_1e
    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v1, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    goto :goto_d

    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported composition strategy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_d
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    iget-object v2, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Outline;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Outline;

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateOutline()V

    goto :goto_e

    :cond_21
    move v3, v4

    :goto_e
    iget p1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iput p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    if-nez v0, :cond_22

    if-eqz v3, :cond_23

    :cond_22
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-interface {p1, p0, p0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_23
    return-void
.end method

.method public final updateOutline()V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    instance-of p0, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v3, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result p0

    invoke-static {v4, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRoundRectOutline-TNW_H78(JJF)V

    goto :goto_0

    :cond_1
    instance-of p0, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/4 v8, 0x0

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Generic;

    iput-object v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Outline;

    iput-wide v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    iput-wide v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iput v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    iput-boolean v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    iput-object p0, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    goto :goto_0

    :cond_2
    instance-of p0, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz p0, :cond_4

    move-object p0, v0

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v9, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v9, :cond_3

    iput-object v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Outline;

    iput-wide v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    iput-wide v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iput v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    iput-boolean v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    iput-object v9, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget v2, p0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iget v3, p0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRoundRectOutline-TNW_H78(JJF)V

    :cond_4
    :goto_0
    instance-of p0, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    return-void
.end method
