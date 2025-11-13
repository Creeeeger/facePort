.class public final Landroidx/compose/foundation/DrawStretchOverscrollModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# instance fields
.field public _renderNode:Landroid/graphics/RenderNode;

.field public final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field public final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p2, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    return-void
.end method

.method public static drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    iget-object v5, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-wide v6, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v6

    iget-wide v7, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    iput-wide v3, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    if-eqz v7, :cond_7

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v9

    invoke-static {v9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v9

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v3

    iget-object v9, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    iput-wide v3, v9, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    iget-object v10, v9, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    const-wide v11, 0xffffffffL

    const/16 v13, 0x20

    if-eqz v10, :cond_0

    shr-long v14, v3, v13

    long-to-int v14, v14

    move-object/from16 v16, v9

    and-long v8, v3, v11

    long-to-int v8, v8

    invoke-virtual {v10, v14, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    move-object/from16 v8, v16

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    iget-object v9, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1

    shr-long v11, v3, v13

    long-to-int v10, v11

    const-wide v11, 0xffffffffL

    and-long v13, v3, v11

    long-to-int v13, v13

    invoke-virtual {v9, v10, v13}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    iget-object v9, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_2

    and-long v13, v3, v11

    long-to-int v10, v13

    const/16 v13, 0x20

    shr-long v11, v3, v13

    long-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_1

    :cond_2
    const/16 v13, 0x20

    :goto_1
    iget-object v9, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_3

    const-wide v10, 0xffffffffL

    and-long v13, v3, v10

    long-to-int v10, v13

    const/16 v11, 0x20

    shr-long v12, v3, v11

    long-to-int v12, v12

    invoke-virtual {v9, v10, v12}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_2

    :cond_3
    move v11, v13

    :goto_2
    iget-object v9, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_4

    shr-long v12, v3, v11

    long-to-int v10, v12

    const-wide v12, 0xffffffffL

    and-long v14, v3, v12

    long-to-int v14, v14

    invoke-virtual {v9, v10, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_3

    :cond_4
    const-wide v12, 0xffffffffL

    :goto_3
    iget-object v9, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_5

    shr-long v14, v3, v11

    long-to-int v10, v14

    and-long v14, v3, v12

    long-to-int v11, v14

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_5
    iget-object v9, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_6

    and-long v10, v3, v12

    long-to-int v10, v10

    const/16 v11, 0x20

    shr-long v14, v3, v11

    long-to-int v14, v14

    invoke-virtual {v9, v10, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_4

    :cond_6
    const/16 v11, 0x20

    :goto_4
    iget-object v8, v8, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_7

    and-long v9, v3, v12

    long-to-int v9, v9

    shr-long/2addr v3, v11

    long-to-int v3, v3

    invoke-virtual {v8, v9, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_7
    if-nez v6, :cond_8

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    :cond_8
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void

    :cond_9
    iget-object v4, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    sget v4, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    invoke-virtual {v2, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    move-result v4

    iget-object v6, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v6

    iget-object v7, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_b

    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    move v8, v9

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v8, 0x1

    :goto_6
    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_7

    :cond_c
    move v10, v9

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v10, 0x1

    :goto_8
    if-eqz v8, :cond_e

    if-eqz v10, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-virtual {v11, v9, v9, v12, v13}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_9

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v12

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-virtual {v11, v9, v9, v13, v12}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_9

    :cond_f
    if-eqz v10, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v13

    invoke-virtual {v11, v9, v9, v12, v14}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v11

    iget-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    const/high16 v13, 0x42b40000    # 90.0f

    if-eqz v12, :cond_11

    iget-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v12, :cond_10

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v12

    iput-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    :cond_10
    invoke-static {v13, v12, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->finish()V

    :cond_11
    iget-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v12

    const/high16 v14, 0x43870000    # 270.0f

    if-eqz v12, :cond_14

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v12

    invoke-static {v14, v12, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v17

    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    iget-object v15, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v15, :cond_12

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v15

    iput-object v15, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    :cond_12
    :try_start_0
    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_a
    const/4 v13, 0x1

    goto :goto_b

    :catchall_0
    const/4 v12, 0x0

    goto :goto_a

    :goto_b
    int-to-float v14, v13

    const/4 v13, 0x0

    sub-float/2addr v14, v9

    :try_start_1
    invoke-virtual {v15, v12, v14}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    invoke-virtual {v15, v12, v14}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    goto :goto_c

    :cond_14
    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_c
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    const/high16 v12, 0x43340000    # 180.0f

    if-eqz v9, :cond_16

    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_15

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    :cond_15
    invoke-static {v12, v9, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    :cond_16
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    invoke-static {v13, v9, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v14

    if-nez v14, :cond_18

    if-eqz v17, :cond_17

    goto :goto_d

    :cond_17
    const/4 v14, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v14, 0x1

    :goto_e
    iget-object v15, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v15

    iget-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v12, :cond_19

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v12

    iput-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    :cond_19
    :try_start_2
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_f

    :catchall_2
    move v9, v13

    :goto_f
    :try_start_3
    invoke-virtual {v12, v9, v15}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_10

    :catchall_3
    invoke-virtual {v12, v9, v15}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_1a
    :goto_10
    move/from16 v17, v14

    :cond_1b
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_1c

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    :cond_1c
    const/high16 v12, 0x43870000    # 270.0f

    invoke-static {v12, v9, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1d
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-static {v12, v9, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v12

    if-nez v12, :cond_1f

    if-eqz v17, :cond_1e

    goto :goto_11

    :cond_1e
    const/16 v16, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/16 v16, 0x1

    :goto_12
    iget-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v12

    iget-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v14, :cond_20

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v14

    iput-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    :cond_20
    :try_start_4
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_13

    :catchall_4
    move v15, v13

    :goto_13
    :try_start_5
    invoke-virtual {v14, v15, v12}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_14

    :catchall_5
    invoke-virtual {v14, v15, v12}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_21
    :goto_14
    move/from16 v17, v16

    :cond_22
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v9, :cond_23

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    iput-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    :cond_23
    invoke-static {v13, v9, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    :cond_24
    iget-object v9, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    const/high16 v12, 0x43340000    # 180.0f

    invoke-static {v12, v9, v11}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v12

    if-nez v12, :cond_26

    if-eqz v17, :cond_25

    goto :goto_15

    :cond_25
    const/16 v16, 0x0

    goto :goto_16

    :cond_26
    :goto_15
    const/16 v16, 0x1

    :goto_16
    iget-object v12, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    iget-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v14, :cond_27

    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v14

    iput-object v14, v7, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    :cond_27
    :try_start_6
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_17
    const/4 v7, 0x1

    goto :goto_18

    :catchall_6
    move v15, v13

    goto :goto_17

    :goto_18
    int-to-float v7, v7

    sub-float/2addr v7, v12

    :try_start_7
    invoke-virtual {v14, v15, v7}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_19

    :catchall_7
    invoke-virtual {v14, v15, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_28
    :goto_19
    move/from16 v17, v16

    :cond_29
    if-eqz v17, :cond_2a

    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_2a
    if-eqz v10, :cond_2b

    move v15, v13

    goto :goto_1a

    :cond_2b
    move v15, v4

    :goto_1a
    if-eqz v8, :cond_2c

    move v4, v13

    :cond_2c
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    new-instance v7, Landroidx/compose/ui/graphics/AndroidCanvas;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    iput-object v11, v7, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    move-object v10, v1

    check-cast v10, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v10, v10, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    iget-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    iget-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v13

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-object/from16 v16, v6

    iget-object v6, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v0, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    :try_start_8
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v0, v15, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v15

    neg-float v2, v4

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v0, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    iput-object v6, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    move-result v0

    move-object/from16 v3, v16

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_8
    move-exception v0

    goto :goto_1b

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_b
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v15

    neg-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :goto_1b
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    iget-object v1, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v1, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->setSize-uvyYCjk(J)V

    iput-object v6, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    throw v0

    :cond_2d
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void
.end method

.method public final getRenderNode()Landroid/graphics/RenderNode;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->_renderNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "AndroidEdgeEffectOverscrollEffect"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->_renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-object v0
.end method
