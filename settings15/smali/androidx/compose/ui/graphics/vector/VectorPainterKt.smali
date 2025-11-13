.class public abstract Landroidx/compose/ui/graphics/vector/VectorPainterKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V
    .locals 7

    iget-object v0, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorNode;

    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathComponent;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/AndroidPath;

    iget v6, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/AndroidPath;->setFillType-oQ8Xj4U(I)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v2, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    iput v2, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static final rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 10

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->genId:I

    int-to-float v1, v1

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v3, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v1, v5

    or-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_4

    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    iget v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v2

    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    :cond_1
    iget v4, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    :cond_2
    invoke-static {v0, v4}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    const-wide/16 v6, 0x10

    iget-wide v8, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    cmp-long v1, v8, v6

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    iget v6, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    invoke-direct {v1, v6, v8, v9}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    new-instance v6, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-boolean v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->autoMirror$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v1, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    iput-object p0, v2, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v0

    :cond_4
    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorPainter;

    return-object v2
.end method
