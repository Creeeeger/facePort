.class final Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $transition:Lcom/android/compose/animation/scene/TransitionState$Transition;

.field final synthetic this$0:Lcom/android/compose/animation/scene/ElementNode;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementNode;Lcom/android/compose/animation/scene/TransitionState$Transition;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iput-object p2, p0, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;->$transition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    iput-object p3, p0, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iget-object v10, v0, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;->$transition:Lcom/android/compose/animation/scene/TransitionState$Transition;

    iget-object v11, v0, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget-object v0, v2, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v3, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    if-eqz v5, :cond_27

    iget-object v12, v2, Lcom/android/compose/animation/scene/ElementNode;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v6, v12, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v7, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v6, v7, v10}, Lcom/android/compose/animation/scene/ElementKt;->shouldPlaceElement(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v0, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    iput-wide v3, v0, Lcom/android/compose/animation/scene/Element$SceneState;->lastOffset:J

    sget-object v1, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    iput-object v1, v0, Lcom/android/compose/animation/scene/Element$SceneState;->lastScale:Lcom/android/compose/animation/scene/Scale;

    sget-object v1, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    iput v1, v0, Lcom/android/compose/animation/scene/Element$SceneState;->lastAlpha:F

    sget-object v0, Lcom/android/compose/animation/scene/ElementNode;->ElementTraverseKey:Ljava/lang/Object;

    sget-object v1, Lcom/android/compose/animation/scene/ElementNode$recursivelyClearPlacementValues$1;->INSTANCE:Lcom/android/compose/animation/scene/ElementNode$recursivelyClearPlacementValues$1;

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_12

    :cond_1
    invoke-interface {v3}, Landroidx/compose/ui/layout/LookaheadScope;->getLookaheadScopeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v13, 0x0

    invoke-interface {v3, v5, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v8

    iget-object v3, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez v10, :cond_2

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    :goto_1
    move-object/from16 v19, v1

    :goto_2
    move-wide/from16 v20, v8

    goto/16 :goto_e

    :cond_2
    iget-object v5, v6, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v7, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/compose/animation/scene/Element$SceneState;

    iget-object v13, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v16, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    goto :goto_1

    :cond_3
    instance-of v14, v10, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v4, v2, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    const-string v17, "Required value was null."

    const/16 v18, 0x1

    iget-object v15, v6, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    iget-object v3, v3, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v14, :cond_d

    invoke-virtual {v10}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v14

    move-object/from16 v19, v1

    if-eqz v14, :cond_4

    iget-object v1, v14, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v14, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    invoke-virtual {v1, v15, v3}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v1

    iget-object v1, v1, Lcom/android/compose/animation/scene/ElementTransformations;->offset:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v1, :cond_5

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v13}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v5

    goto :goto_4

    :cond_6
    move-object/from16 v7, v16

    :goto_4
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v15

    move-object v5, v3

    move-object v3, v1

    move-wide/from16 v20, v8

    move-object v8, v10

    move-object v9, v15

    invoke-interface/range {v3 .. v9}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_e

    :cond_7
    move-object v4, v10

    check-cast v4, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v4, v4, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    if-eqz v4, :cond_8

    const/16 v18, -0x1

    :cond_8
    move/from16 v4, v18

    iget-object v5, v14, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v10}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v6

    if-eqz v5, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    :cond_9
    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-interface {v1}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v4}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v4

    :cond_a
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v5, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide v7, v15, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v7, v8, v5, v6, v4}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v3

    :goto_5
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    goto/16 :goto_e

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    move-object v1, v3

    move-wide/from16 v20, v8

    goto :goto_7

    :cond_d
    move-object/from16 v19, v1

    goto :goto_6

    :goto_7
    if-eqz v16, :cond_e

    if-eqz v5, :cond_e

    move/from16 v3, v18

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_12

    invoke-static {v15, v10}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    sget-wide v4, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    iget-wide v6, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_f

    :goto_9
    move-object v3, v1

    goto/16 :goto_e

    :cond_f
    iget-wide v8, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v8, v9, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_10

    goto/16 :goto_e

    :cond_10
    invoke-virtual {v3, v1}, Landroidx/compose/ui/geometry/Offset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_e

    :cond_11
    invoke-virtual {v10}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v1

    invoke-static {v6, v7, v8, v9, v1}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v3

    goto :goto_5

    :cond_12
    if-eqz v3, :cond_13

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_b

    :cond_13
    if-eqz v3, :cond_14

    goto :goto_a

    :cond_14
    if-nez v16, :cond_15

    :goto_a
    move-object v7, v5

    goto :goto_c

    :cond_15
    :goto_b
    move-object/from16 v7, v16

    :goto_c
    if-eqz v7, :cond_26

    iget-object v1, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v14, v7, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v1, v15, v14}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v1

    iget-object v1, v1, Lcom/android/compose/animation/scene/ElementTransformations;->offset:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v1, :cond_16

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    goto :goto_e

    :cond_16
    invoke-virtual {v7}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetOffset-F1C5BW0()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v15

    move-object v3, v1

    move-object v5, v14

    move-object v8, v10

    move-object v9, v15

    invoke-interface/range {v3 .. v9}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual {v10}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v4

    invoke-interface {v1}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, v4}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v4

    :cond_18
    invoke-virtual {v14, v13}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-wide v5, v15, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    if-eqz v1, :cond_19

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v7, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v7, v8, v5, v6, v4}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v3

    :goto_d
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    goto :goto_9

    :cond_19
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v7, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v5, v6, v7, v8, v4}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v3

    goto :goto_d

    :goto_e
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v3, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    sget-wide v5, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    iget-object v6, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v6, v6, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/ui/geometry/Offset;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    iget-wide v6, v6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    iget-object v8, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v9, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-wide v6, v9, Lcom/android/compose/animation/scene/Element$SceneState;->offsetInterruptionDelta:J

    if-nez v10, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v9, v9, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v13, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v13, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    :cond_1b
    iget-object v9, v8, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v9, :cond_1c

    goto :goto_f

    :cond_1c
    iget-object v8, v8, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-static {v8, v10}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iput-wide v6, v9, Lcom/android/compose/animation/scene/Element$SceneState;->offsetInterruptionDelta:J

    :cond_1d
    :goto_f
    iget-object v6, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v7, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iput-wide v7, v6, Lcom/android/compose/animation/scene/Element$SceneState;->offsetBeforeInterruption:J

    :cond_1e
    iget-object v1, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v6, v1, Lcom/android/compose/animation/scene/Element$SceneState;->offsetInterruptionDelta:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/compose/ui/geometry/Offset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    if-nez v10, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-virtual {v10, v0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->interruptionProgress$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-nez v6, :cond_20

    goto :goto_10

    :cond_20
    iget-wide v6, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    :cond_21
    :goto_10
    iget-object v1, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-wide v3, v1, Lcom/android/compose/animation/scene/Element$SceneState;->lastOffset:J

    move-wide/from16 v5, v20

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v3

    iget-object v1, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez v10, :cond_22

    goto :goto_11

    :cond_22
    iget-object v5, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v6, v1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/compose/animation/scene/Element$SceneState;

    iget-object v7, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v5, :cond_23

    if-nez v6, :cond_23

    goto :goto_11

    :cond_23
    iget-object v1, v1, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    if-eqz v5, :cond_24

    if-eqz v6, :cond_24

    invoke-static {v1, v10}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_11

    :cond_24
    iget-object v5, v10, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v6, v12, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v1, v6}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v1

    iget-object v1, v1, Lcom/android/compose/animation/scene/ElementTransformations;->alpha:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v1, :cond_25

    :goto_11
    iget-object v1, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v10, v5, v6}, Lcom/android/compose/animation/scene/ElementKt;->interruptedAlpha(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-nez v0, :cond_25

    iget-object v0, v2, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput v6, v0, Lcom/android/compose/animation/scene/Element$SceneState;->lastAlpha:F

    move-object/from16 v0, v19

    invoke-static {v0, v11, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    goto :goto_12

    :cond_25
    move-object/from16 v0, v19

    new-instance v5, Lcom/android/compose/animation/scene/ElementNode$place$1$1;

    invoke-direct {v5, v2}, Lcom/android/compose/animation/scene/ElementNode$place$1$1;-><init>(Lcom/android/compose/animation/scene/ElementNode;)V

    const/4 v6, 0x2

    move-object v1, v11

    move-wide v2, v3

    move-object v4, v5

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLkotlin/jvm/functions/Function1;I)V

    :goto_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Element "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have any coordinates"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
