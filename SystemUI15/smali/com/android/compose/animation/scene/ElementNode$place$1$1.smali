.class final Lcom/android/compose/animation/scene/ElementNode$place$1$1;
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
.field final synthetic this$0:Lcom/android/compose/animation/scene/ElementNode;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementNode$place$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode$place$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iget-object v3, v2, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    if-nez v3, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v4, v2, Lcom/android/compose/animation/scene/ElementNode;->currentTransitions:Ljava/util/List;

    iget-object v2, v2, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-static {v2, v3, v4}, Lcom/android/compose/animation/scene/ElementKt;->access$elementTransition(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Ljava/util/List;)Lcom/android/compose/animation/scene/TransitionState$Transition;

    move-result-object v2

    iget-object v3, v0, Lcom/android/compose/animation/scene/ElementNode$place$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iget-object v4, v3, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v5, v3, Lcom/android/compose/animation/scene/ElementNode;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v5, v5, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v3, v3, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v5, v3, v2}, Lcom/android/compose/animation/scene/ElementKt;->shouldPlaceElement(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_f

    :cond_1
    iget-object v3, v0, Lcom/android/compose/animation/scene/ElementNode$place$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iget-object v4, v3, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v3, v3, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/ElementNode$place$1$1;->this$0:Lcom/android/compose/animation/scene/ElementNode;

    iget-object v0, v0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-object v14, v3, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    if-nez v2, :cond_2

    :goto_0
    move-object/from16 p1, v1

    move v7, v12

    goto/16 :goto_c

    :cond_2
    iget-object v5, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/compose/animation/scene/Element$SceneState;

    iget-object v15, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    instance-of v8, v2, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v9, v0, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    const/16 v16, 0x1

    const-string v10, "Required value was null."

    iget-object v11, v3, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    if-eqz v8, :cond_c

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v12, v8, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v5, v8, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    invoke-virtual {v5, v11, v9}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v5

    iget-object v12, v5, Lcom/android/compose/animation/scene/ElementTransformations;->alpha:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v12, :cond_5

    move-object/from16 p1, v1

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_c

    :cond_5
    invoke-virtual {v9, v15}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v11, v7

    goto :goto_3

    :cond_6
    move-object v11, v6

    :goto_3
    if-eqz v11, :cond_b

    move-object v5, v12

    move-object v6, v4

    move-object v7, v9

    move-object v10, v8

    move-object v8, v3

    move-object v9, v11

    move-object v11, v10

    move-object v10, v2

    move-object/from16 p1, v1

    move-object v1, v11

    move-object v11, v13

    invoke-interface/range {v5 .. v11}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_4
    move-object v13, v5

    goto :goto_2

    :cond_7
    move-object v6, v2

    check-cast v6, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v6, v6, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    if-eqz v6, :cond_8

    const/16 v16, -0x1

    :cond_8
    move/from16 v6, v16

    iget-object v1, v1, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v7

    if-eqz v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    :cond_9
    int-to-float v1, v6

    mul-float/2addr v1, v7

    invoke-interface {v12}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6, v1}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v1

    :cond_a
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 p1, v1

    if-eqz v6, :cond_d

    if-eqz v7, :cond_d

    goto :goto_6

    :cond_d
    const/16 v16, 0x0

    :goto_6
    if-eqz v16, :cond_f

    invoke-static {v11, v2}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_7
    goto/16 :goto_2

    :cond_e
    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    goto :goto_5

    :cond_f
    if-eqz v16, :cond_10

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v16, :cond_11

    goto :goto_8

    :cond_11
    if-nez v6, :cond_12

    :goto_8
    move-object v9, v7

    goto :goto_a

    :cond_12
    :goto_9
    move-object v9, v6

    :goto_a
    if-eqz v9, :cond_1a

    iget-object v1, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v12, v9, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v1, v11, v12}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v1

    iget-object v1, v1, Lcom/android/compose/animation/scene/ElementTransformations;->alpha:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v1, :cond_13

    goto :goto_7

    :cond_13
    move-object v5, v1

    move-object v6, v4

    move-object v7, v12

    move-object v8, v3

    move-object v10, v2

    move-object v11, v13

    invoke-interface/range {v5 .. v11}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v6

    invoke-interface {v1}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, v6}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v6

    :cond_15
    invoke-virtual {v12, v15}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1, v7, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    :goto_b
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v13, v1

    goto :goto_c

    :cond_16
    const/high16 v7, 0x3f800000    # 1.0f

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v7, v1, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    goto :goto_b

    :goto_c
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-gez v6, :cond_17

    move v1, v5

    :cond_17
    cmpl-float v6, v1, v7

    if-lez v6, :cond_18

    move v12, v7

    goto :goto_d

    :cond_18
    move v12, v1

    :goto_d
    iget-boolean v1, v3, Lcom/android/compose/animation/scene/Element;->wasDrawnInAnyScene:Z

    if-nez v1, :cond_19

    cmpl-float v1, v12, v5

    if-lez v1, :cond_19

    iget-object v1, v14, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entries:Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/compose/animation/scene/Element$SceneState;

    iput v5, v6, Lcom/android/compose/animation/scene/Element$SceneState;->alphaBeforeInterruption:F

    goto :goto_e

    :cond_19
    invoke-static {v4, v3, v2, v0, v12}, Lcom/android/compose/animation/scene/ElementKt;->interruptedAlpha(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/Element$SceneState;F)F

    move-result v1

    iput v1, v0, Lcom/android/compose/animation/scene/Element$SceneState;->lastAlpha:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    sget-object v1, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/graphics/CompositingStrategy;->ModulateAlpha:I

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setCompositingStrategy-aDBOjCE(I)V

    :goto_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
