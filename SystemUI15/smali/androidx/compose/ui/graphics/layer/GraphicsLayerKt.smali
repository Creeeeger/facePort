.class public abstract Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 19

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

    goto/16 :goto_c

    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getHasDisplayList()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->recordInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-wide v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v4

    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    if-eqz v4, :cond_2

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    sget-object v4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    shr-long v10, v8, v7

    long-to-int v4, v10

    int-to-float v4, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    and-long/2addr v8, v5

    long-to-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-static {v4, v8}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setPivotOffset-k-4lQ0M(J)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getShadowElevation()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    const/4 v8, 0x1

    if-lez v4, :cond_3

    move v4, v8

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    :cond_4
    sget-object v10, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    move-object v10, v1

    check-cast v10, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v15, v10, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v15}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v11

    xor-int/lit8 v17, v11, 0x1

    if-eqz v17, :cond_8

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    iget-wide v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    sget-object v13, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    move-object/from16 v18, v10

    shr-long v9, v11, v7

    long-to-int v9, v9

    int-to-float v9, v9

    and-long v10, v11, v5

    long-to-int v10, v10

    int-to-float v10, v10

    iget-wide v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    sget-object v13, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    move-object/from16 v16, v15

    shr-long v14, v11, v7

    long-to-int v7, v14

    int-to-float v7, v7

    add-float v14, v9, v7

    and-long/2addr v5, v11

    long-to-int v5, v5

    int-to-float v5, v5

    add-float v15, v10, v5

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getAlpha()F

    move-result v5

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getBlendMode-0nO6VwU()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_6

    sget-object v7, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/graphics/BlendMode;->SrcOver:I

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getCompositingStrategy-ke2Ky5w()I

    move-result v7

    sget-object v11, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Offscreen:I

    invoke-static {v7, v11}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v7, v16

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez v7, :cond_7

    new-instance v7, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    iput-object v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_7
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    iget-object v6, v7, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    move-object/from16 v11, v16

    move v12, v9

    move v13, v10

    move-object/from16 v7, v16

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    :goto_2
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->calculateMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_8
    move-object/from16 v18, v10

    move-object v7, v15

    const/4 v5, 0x0

    :goto_3
    iget-boolean v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    if-nez v6, :cond_a

    if-eqz v17, :cond_9

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getClip()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move v6, v8

    :goto_5
    if-eqz v6, :cond_e

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Outline;

    move-result-object v9

    instance-of v10, v9, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Outline;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_7

    :cond_b
    instance-of v10, v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v10, :cond_d

    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v10, :cond_c

    iget-object v11, v10, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    goto :goto_6

    :cond_c
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v10

    iput-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

    :goto_6
    check-cast v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v9, v9, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v10, v9}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-static {v1, v10}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V

    goto :goto_7

    :cond_d
    instance-of v10, v9, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v10, :cond_e

    check-cast v9, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v9, v9, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-static {v1, v9}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V

    :cond_e
    :goto_7
    if-eqz v2, :cond_13

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    iget-boolean v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->trackingInProgress:Z

    if-eqz v9, :cond_14

    iget-object v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_f

    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    iget-object v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v9, :cond_10

    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v9

    iget-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    iput-object v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    iput-object v5, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_8

    :cond_10
    iput-object v0, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :goto_8
    iget-object v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependenciesSet:Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_11

    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    goto :goto_9

    :cond_11
    iget-object v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v9, v0, :cond_12

    move v9, v8

    goto :goto_9

    :cond_12
    iput-object v5, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_13

    iget v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    add-int/2addr v2, v8

    iput v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    :cond_13
    move-object/from16 v2, v18

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only add dependencies during a tracking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    iget-object v2, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v2, :cond_15

    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_15
    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v8

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iget-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iget-wide v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    iput-object v3, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v5, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v1, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v8, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    iput-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    goto :goto_b

    :cond_16
    invoke-interface {v3, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    :goto_b
    if-eqz v6, :cond_17

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_17
    if-eqz v4, :cond_18

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    :cond_18
    if-eqz v17, :cond_19

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    :goto_c
    return-void
.end method
