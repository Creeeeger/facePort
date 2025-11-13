.class public abstract Lcom/android/compose/animation/scene/ElementKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$elementTransition(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Ljava/util/List;)Lcom/android/compose/animation/scene/TransitionState$Transition;
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/compose/animation/scene/TransitionState$Transition;

    iget-object v3, p1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v4, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v2, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    :goto_2
    check-cast v0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    iget-object p2, p1, Lcom/android/compose/animation/scene/Element;->lastTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    iput-object v0, p1, Lcom/android/compose/animation/scene/Element;->lastTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    iget-object v1, p2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v1}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$updatedSceneState(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Element$SceneState;

    move-result-object v1

    iget-object v3, p2, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v3}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$updatedSceneState(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Element$SceneState;

    move-result-object v3

    iget-object v4, v0, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v4}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$updatedSceneState(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Element$SceneState;

    move-result-object v4

    iget-object v5, v0, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v2, v5}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$updatedSceneState(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Element$SceneState;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/compose/animation/scene/ElementKt;->reconcileStates(Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)V

    invoke-static {p1, v0}, Lcom/android/compose/animation/scene/ElementKt;->reconcileStates(Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)V

    if-eqz v1, :cond_4

    invoke-static {p0, p1, v0, v1}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$cleanInterruptionValues(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {p0, p1, v0, v3}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$cleanInterruptionValues(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-static {p0, p1, v0, v4}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$cleanInterruptionValues(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;)V

    :cond_6
    if-eqz v2, :cond_8

    invoke-static {p0, p1, v0, v2}, Lcom/android/compose/animation/scene/ElementKt;->prepareInterruption$cleanInterruptionValues(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;)V

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    iget-object p0, v2, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->values:Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    move-object p1, p0

    check-cast p1, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, p0

    check-cast p1, Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/Element$SceneState;

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    iput-wide v1, p1, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    sget-object p2, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    iput-object p2, p1, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    sget-object p2, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    iput p2, p1, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    invoke-static {p1}, Lcom/android/compose/animation/scene/ElementKt;->clearInterruptionDeltas(Lcom/android/compose/animation/scene/Element$SceneState;)V

    goto :goto_3

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static final clearInterruptionDeltas(Lcom/android/compose/animation/scene/Element$SceneState;)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetInterruptionDelta:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->sizeInterruptionDelta:J

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Zero:Lcom/android/compose/animation/scene/Scale;

    iput-object v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->alphaInterruptionDelta:F

    return-void
.end method

.method public static final getDrawScale$specifiedOrCenter(JLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-wide p0, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    goto :goto_1

    :cond_1
    check-cast p2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static final interruptedAlpha(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;F)F
    .locals 6

    sget-object v0, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p3, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sub-float/2addr v3, p4

    iput v3, p3, Lcom/android/compose/animation/scene/Element$SceneState;->alphaInterruptionDelta:F

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p3, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v5, p2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p2, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    :cond_1
    iget-object v4, p1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-static {p1, p2}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput v3, v4, Lcom/android/compose/animation/scene/Element$SceneState;->alphaInterruptionDelta:F

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p3, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    :cond_4
    iget p1, p3, Lcom/android/compose/animation/scene/Element$SceneState;->alphaInterruptionDelta:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->interruptionProgress$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)F

    move-result p0

    cmpg-float p2, p0, v1

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p4, p1

    :cond_7
    :goto_1
    return p4
.end method

.method public static final isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/compose/animation/scene/ElementKt;->sharedElementTransformation(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;->enabled:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final prepareInterruption$cleanInterruptionValues(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    iput-wide v0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->sizeInterruptionDelta:J

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->offsetInterruptionDelta:J

    const/4 v0, 0x0

    iput v0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->alphaInterruptionDelta:F

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Zero:Lcom/android/compose/animation/scene/Scale;

    iput-object v0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

    iget-object v0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, v0, p1, p2}, Lcom/android/compose/animation/scene/ElementKt;->shouldPlaceElement(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-wide p0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    iput-wide p0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    sget-object p0, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    iput p0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    sget-object p0, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    iput-object p0, p3, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    :cond_0
    return-void
.end method

.method public static final prepareInterruption$updatedSceneState(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Element$SceneState;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/Element$SceneState;

    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastOffset:J

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    iget-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastSize:J

    iput-wide v0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    iget-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastScale:Lcom/android/compose/animation/scene/Scale;

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    iget p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->lastAlpha:F

    iput p1, p0, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final reconcileStates(Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)V
    .locals 4

    iget-object v0, p0, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v1, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v2, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-static {p0, p1}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    iget-wide p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    iget-wide p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-wide p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    iput-wide p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    iget-wide p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    iput-wide p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    iget-object p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    iput-object p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    iget p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    iput p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    invoke-static {v1}, Lcom/android/compose/animation/scene/ElementKt;->clearInterruptionDeltas(Lcom/android/compose/animation/scene/Element$SceneState;)V

    goto :goto_0

    :cond_3
    iget-wide p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    iget-wide p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-wide p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    iput-wide p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    iget-wide p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    iput-wide p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    iget-object p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    iput-object p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    iget p0, v1, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    iput p0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    invoke-static {v0}, Lcom/android/compose/animation/scene/ElementKt;->clearInterruptionDeltas(Lcom/android/compose/animation/scene/Element$SceneState;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final sharedElementTransformation(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;
    .locals 4

    iget-object v0, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v1, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, p0, v1}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v1

    iget-object p1, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, p0, p1}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object p1

    iget-object v0, v1, Lcom/android/compose/animation/scene/ElementTransformations;->shared:Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    iget-object p1, p1, Lcom/android/compose/animation/scene/ElementTransformations;->shared:Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Different sharedElement() transformations matched "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (from="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final shouldPlaceElement(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p3, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    if-nez v2, :cond_1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v2, p2, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-static {p2, p3}, Lcom/android/compose/animation/scene/ElementKt;->sharedElementTransformation(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;->enabled:Z

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v0, p3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v0, p0}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/Scene;

    iget-object v0, v0, Lcom/android/compose/animation/scene/Scene;->zIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v0

    iget-object v1, p3, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, p0}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/Scene;

    iget-object p0, p0, Lcom/android/compose/animation/scene/Scene;->zIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p0

    iget-object p2, p2, Lcom/android/compose/animation/scene/ElementKey;->scenePicker:Lcom/android/compose/animation/scene/ElementScenePicker;

    invoke-interface {p2, p3, v0, p0}, Lcom/android/compose/animation/scene/ElementScenePicker;->sceneDuringTransition(Lcom/android/compose/animation/scene/TransitionState$Transition;FF)Lcom/android/compose/animation/scene/SceneKey;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    :cond_7
    :goto_2
    return v0
.end method
