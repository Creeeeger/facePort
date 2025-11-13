.class public abstract Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 18

    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-eqz v3, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v4, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->recordInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-wide v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    const-wide v6, 0x7fffffff7fffffffL

    and-long/2addr v4, v6

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v4, v4, v6

    const/4 v6, 0x1

    if-nez v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-wide v7, 0xffffffffL

    const/16 v9, 0x20

    if-eqz v4, :cond_3

    iget-wide v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    shr-long v12, v10, v9

    long-to-int v4, v12

    int-to-float v4, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    and-long/2addr v10, v7

    long-to-int v10, v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    invoke-static {v4, v10}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setPivotOffset-k-4lQ0M(J)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    iget v4, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    :cond_5
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v10

    xor-int/lit8 v16, v10, 0x1

    if-eqz v16, :cond_a

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    iget-wide v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    shr-long v12, v10, v9

    long-to-int v12, v12

    int-to-float v13, v12

    and-long/2addr v10, v7

    long-to-int v10, v10

    int-to-float v12, v10

    iget-wide v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    move-object/from16 p0, v15

    shr-long v14, v10, v9

    long-to-int v9, v14

    int-to-float v9, v9

    add-float/2addr v9, v13

    and-long/2addr v7, v10

    long-to-int v7, v7

    int-to-float v7, v7

    add-float v14, v12, v7

    iget v7, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v7, v10

    if-ltz v10, :cond_7

    const/4 v10, 0x3

    invoke-static {v8, v10}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_7

    iget v10, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    invoke-static {v10, v6}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    const/4 v7, 0x0

    move-object/from16 v9, p0

    move v8, v12

    move v5, v13

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez v10, :cond_8

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v10

    iput-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_8
    invoke-virtual {v10, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    invoke-virtual {v10, v8}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    iget-object v15, v10, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p0

    move v11, v13

    move v8, v12

    move v5, v13

    move v13, v9

    move-object/from16 v9, p0

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    :goto_3
    invoke-virtual {v9, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->matrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_9

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->matrix:Landroid/graphics/Matrix;

    :cond_9
    iget-object v8, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8, v5}, Landroid/graphics/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_4

    :cond_a
    move-object v9, v15

    const/4 v7, 0x0

    :goto_4
    iget-boolean v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    if-nez v5, :cond_c

    if-eqz v16, :cond_b

    iget-boolean v5, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    move v5, v6

    :goto_6
    if-eqz v5, :cond_10

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Outline;

    move-result-object v8

    instance-of v10, v8, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v10, :cond_d

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Outline;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    invoke-static {v1, v8}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_8

    :cond_d
    instance-of v10, v8, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v10, :cond_f

    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v10, :cond_e

    iget-object v11, v10, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    goto :goto_7

    :cond_e
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v10

    iput-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

    :goto_7
    check-cast v8, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v8, v8, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v10, v8}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-interface {v1, v10, v6}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    goto :goto_8

    :cond_f
    instance-of v10, v8, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v10, :cond_10

    check-cast v8, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v8, v8, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v1, v8, v6}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    :cond_10
    :goto_8
    if-eqz v2, :cond_16

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    iget-boolean v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->trackingInProgress:Z

    if-eqz v8, :cond_15

    iget-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_11

    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    iget-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v8, :cond_12

    sget v8, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v8, Landroidx/collection/MutableScatterSet;

    invoke-direct {v8}, Landroidx/collection/MutableScatterSet;-><init>()V

    iget-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    iput-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    iput-object v7, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_9

    :cond_12
    iput-object v0, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :goto_9
    iget-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependenciesSet:Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_13

    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    move/from16 v17, v2

    goto :goto_a

    :cond_13
    iget-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v8, v0, :cond_14

    move/from16 v17, v6

    goto :goto_a

    :cond_14
    iput-object v7, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/16 v17, 0x0

    :goto_a
    if-eqz v17, :cond_16

    iget v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    add-int/2addr v2, v6

    iput v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only add dependencies during a tracking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_b
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v2, :cond_17

    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_17
    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v7

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iget-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iget-wide v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    iput-object v3, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v6, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v1, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v7, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    iput-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    goto :goto_c

    :cond_18
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :goto_c
    if-eqz v5, :cond_19

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_19
    if-eqz v4, :cond_1a

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    :cond_1a
    if-eqz v16, :cond_1b

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    :cond_1b
    :goto_d
    return-void
.end method
