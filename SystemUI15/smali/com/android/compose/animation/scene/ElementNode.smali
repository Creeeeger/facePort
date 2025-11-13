.class public final Lcom/android/compose/animation/scene/ElementNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/layout/ApproachLayoutModifierNode;
.implements Landroidx/compose/ui/node/TraversableNode;


# static fields
.field public static final Companion:Lcom/android/compose/animation/scene/ElementNode$Companion;

.field public static final ElementTraverseKey:Ljava/lang/Object;


# instance fields
.field public _element:Lcom/android/compose/animation/scene/Element;

.field public _sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

.field public currentTransitions:Ljava/util/List;

.field public key:Lcom/android/compose/animation/scene/ElementKey;

.field public final layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field public final scene:Lcom/android/compose/animation/scene/Scene;

.field public final traverseKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/ElementNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/ElementNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/ElementNode;->Companion:Lcom/android/compose/animation/scene/ElementNode$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/ElementNode;->ElementTraverseKey:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Ljava/util/List;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/compose/animation/scene/TransitionState$Transition;",
            ">;",
            "Lcom/android/compose/animation/scene/Scene;",
            "Lcom/android/compose/animation/scene/ElementKey;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/ElementNode;->currentTransitions:Ljava/util/List;

    iput-object p3, p0, Lcom/android/compose/animation/scene/ElementNode;->scene:Lcom/android/compose/animation/scene/Scene;

    iput-object p4, p0, Lcom/android/compose/animation/scene/ElementNode;->key:Lcom/android/compose/animation/scene/ElementKey;

    sget-object p1, Lcom/android/compose/animation/scene/ElementNode;->ElementTraverseKey:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementNode;->traverseKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final approachMeasure-3p2s80s(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode;->currentTransitions:Ljava/util/List;

    iget-object v3, v0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-static {v4, v3, v2}, Lcom/android/compose/animation/scene/ElementKt;->access$elementTransition(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Ljava/util/List;)Lcom/android/compose/animation/scene/TransitionState$Transition;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v13, 0x1

    if-eqz v5, :cond_1

    iget-object v6, v0, Lcom/android/compose/animation/scene/ElementNode;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v6, v6, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v6}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v13

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v13

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    :goto_2
    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    iput-wide v3, v2, Lcom/android/compose/animation/scene/Element$SceneState;->lastOffset:J

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    iput-object v3, v2, Lcom/android/compose/animation/scene/Element$SceneState;->lastScale:Lcom/android/compose/animation/scene/Scale;

    sget-object v3, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    iput v4, v2, Lcom/android/compose/animation/scene/Element$SceneState;->lastAlpha:F

    sget-object v2, Lcom/android/compose/animation/scene/ElementNode;->ElementTraverseKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/compose/animation/scene/ElementNode$recursivelyClearPlacementValues$1;->INSTANCE:Lcom/android/compose/animation/scene/ElementNode$recursivelyClearPlacementValues$1;

    invoke-static {v0, v2, v4}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    iput-wide v2, v0, Lcom/android/compose/animation/scene/Element$SceneState;->lastSize:J

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    sget-object v3, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$1;->INSTANCE:Lcom/android/compose/animation/scene/ElementNode$approachMeasure$1;

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v8, v0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    if-nez v3, :cond_4

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v6, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    :goto_3
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    goto/16 :goto_f

    :cond_4
    iget-object v5, v8, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v6, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/compose/animation/scene/Element$SceneState;

    iget-object v15, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v7, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_5
    instance-of v9, v3, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v10, v2, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    const-string v11, "Required value was null."

    iget-object v4, v8, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    if-eqz v9, :cond_e

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v12, v9, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v6, v9, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    invoke-virtual {v6, v4, v10}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v4

    iget-object v4, v4, Lcom/android/compose/animation/scene/ElementTransformations;->size:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v4, :cond_7

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v6, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_3

    :cond_7
    invoke-virtual {v10, v15}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v12, v5

    goto :goto_6

    :cond_8
    move-object v12, v7

    :goto_6
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v11

    move-object v5, v4

    move-object v6, v14

    move-object v7, v10

    move-object v10, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v3

    move-object/from16 p3, v11

    invoke-interface/range {v5 .. v11}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_7
    goto :goto_4

    :cond_9
    move-object v7, v3

    check-cast v7, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v7, v7, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    if-eqz v7, :cond_a

    const/4 v13, -0x1

    :cond_a
    iget-object v7, v12, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v8

    if-eqz v7, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    :cond_b
    int-to-float v7, v13

    mul-float/2addr v7, v8

    invoke-interface {v4}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4, v7}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v7

    :cond_c
    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    iget-wide v4, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iget-wide v8, v6, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v8, v9, v4, v5, v7}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp-e0twbBA(JJF)J

    move-result-wide v4

    :goto_8
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    goto/16 :goto_4

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v7, :cond_f

    if-eqz v5, :cond_f

    move v9, v13

    goto :goto_9

    :cond_f
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_13

    invoke-static {v4, v3}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    sget-object v6, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    iget-wide v8, v4, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v10

    xor-int/2addr v10, v13

    if-nez v10, :cond_10

    goto :goto_7

    :cond_10
    iget-wide v10, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v10, v11, v6, v7}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v6

    xor-int/2addr v6, v13

    if-nez v6, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {v5, v8, v9}, Landroidx/compose/ui/unit/IntSize;->equals-impl(Ljava/lang/Object;J)Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_a
    move-object v5, v4

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v4

    invoke-static {v8, v9, v10, v11, v4}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp-e0twbBA(JJF)J

    move-result-wide v4

    goto :goto_8

    :cond_13
    if-eqz v9, :cond_14

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_c

    :cond_14
    if-eqz v9, :cond_15

    goto :goto_b

    :cond_15
    if-nez v7, :cond_16

    :goto_b
    move-object v9, v5

    goto :goto_d

    :cond_16
    :goto_c
    move-object v9, v7

    :goto_d
    if-eqz v9, :cond_22

    iget-object v5, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v12, v9, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v5, v4, v12}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v4

    iget-object v4, v4, Lcom/android/compose/animation/scene/ElementTransformations;->size:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v4, :cond_17

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v6, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    goto/16 :goto_3

    :cond_17
    invoke-virtual {v9}, Lcom/android/compose/animation/scene/Element$SceneState;->getTargetSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v13

    move-object v5, v4

    move-object v6, v14

    move-object v7, v12

    move-object v10, v3

    move-object v11, v13

    invoke-interface/range {v5 .. v11}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto/16 :goto_7

    :cond_18
    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v6

    invoke-interface {v4}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4, v6}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v6

    :cond_19
    invoke-virtual {v12, v15}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-wide v7, v13, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    if-eqz v4, :cond_1a

    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    iget-wide v4, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v4, v5, v7, v8, v6}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp-e0twbBA(JJF)J

    move-result-wide v4

    :goto_e
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v4

    goto :goto_a

    :cond_1a
    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    iget-wide v4, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v7, v8, v4, v5, v6}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp-e0twbBA(JJF)J

    move-result-wide v4

    goto :goto_e

    :goto_f
    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    iget-wide v5, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_1b

    sget-object v5, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    iput-wide v5, v2, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    sget-object v5, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v7, v2, Lcom/android/compose/animation/scene/Element$SceneState;->sizeInterruptionDelta:J

    goto/16 :goto_13

    :cond_1b
    sget-object v4, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v8

    iget-wide v8, v8, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/unit/IntSize;->equals-impl(Ljava/lang/Object;J)Z

    move-result v10

    const/16 v13, 0x20

    if-nez v10, :cond_1c

    shr-long v11, v8, v13

    long-to-int v10, v11

    shr-long v11, v5, v13

    long-to-int v11, v11

    sub-int/2addr v10, v11

    const-wide v11, 0xffffffffL

    and-long/2addr v8, v11

    long-to-int v8, v8

    move-object v9, v14

    and-long v13, v5, v11

    long-to-int v11, v13

    sub-int/2addr v8, v11

    invoke-static {v10, v8}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/compose/animation/scene/Element$SceneState;->sizeInterruptionDelta:J

    iget-wide v10, v4, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iput-wide v10, v2, Lcom/android/compose/animation/scene/Element$SceneState;->sizeBeforeInterruption:J

    goto :goto_10

    :cond_1c
    move-object v9, v14

    :goto_10
    iget-wide v10, v2, Lcom/android/compose/animation/scene/Element$SceneState;->sizeInterruptionDelta:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v2

    iget-wide v10, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    invoke-static {v7, v10, v11}, Landroidx/compose/ui/unit/IntSize;->equals-impl(Ljava/lang/Object;J)Z

    move-result v2

    if-nez v2, :cond_1f

    if-nez v3, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-virtual {v3, v9}, Lcom/android/compose/animation/scene/TransitionState$Transition;->interruptionProgress$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-nez v4, :cond_1e

    goto :goto_11

    :cond_1e
    const/16 v4, 0x20

    shr-long v7, v5, v4

    long-to-int v7, v7

    int-to-float v7, v7

    shr-long v8, v10, v4

    long-to-int v4, v8

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-float v5, v5

    and-long v9, v10, v7

    long-to-int v6, v9

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v5

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    invoke-static {v4, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v5

    :cond_1f
    :goto_11
    sget-object v2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    const/16 v4, 0x20

    shr-long v7, v5, v4

    long-to-int v4, v7

    if-gez v4, :cond_20

    const/4 v4, 0x0

    :cond_20
    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_21

    const/4 v12, 0x0

    goto :goto_12

    :cond_21
    move v12, v5

    :goto_12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v12}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v4

    move-object/from16 v2, p2

    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    :goto_13
    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v6, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/compose/animation/scene/Element$SceneState;->lastSize:J

    iget v2, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v6, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;

    invoke-direct {v6, v0, v3, v4}, Lcom/android/compose/animation/scene/ElementNode$approachMeasure$2;-><init>(Lcom/android/compose/animation/scene/ElementNode;Lcom/android/compose/animation/scene/TransitionState$Transition;Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/compose/animation/scene/Element;->wasDrawnInAnyScene:Z

    iget-object v2, v0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/compose/animation/scene/ElementNode;->currentTransitions:Ljava/util/List;

    iget-object v5, v0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-static {v5, v2, v4}, Lcom/android/compose/animation/scene/ElementKt;->access$elementTransition(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Ljava/util/List;)Lcom/android/compose/animation/scene/TransitionState$Transition;

    move-result-object v2

    iget-object v9, v0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v5, v9, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    iget-object v13, v9, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v14, v4, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    if-nez v2, :cond_0

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    :goto_1
    move-object/from16 v16, v0

    goto/16 :goto_b

    :cond_0
    iget-object v6, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/compose/animation/scene/Element$SceneState;

    iget-object v15, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v7, :cond_1

    if-nez v8, :cond_1

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    goto :goto_1

    :cond_1
    instance-of v10, v2, Lcom/android/compose/animation/scene/SwipeTransition;

    const-string v11, "Required value was null."

    if-eqz v10, :cond_a

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getCurrentOverscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v10, v12, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v6, v12, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    invoke-virtual {v6, v5, v14}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v6

    iget-object v10, v6, Lcom/android/compose/animation/scene/ElementTransformations;->drawScale:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v10, :cond_3

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    invoke-virtual {v14, v15}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v16, v8

    goto :goto_3

    :cond_4
    move-object/from16 v16, v7

    :goto_3
    if-eqz v16, :cond_9

    sget-object v6, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    move-object v6, v10

    move-object v7, v0

    move-object v8, v14

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    move-object/from16 p0, v11

    move-object v11, v2

    move-object v3, v12

    move-object/from16 v12, p0

    invoke-interface/range {v6 .. v12}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v16, v0

    :goto_4
    move-object v3, v6

    goto/16 :goto_b

    :cond_5
    move-object v8, v2

    check-cast v8, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-boolean v8, v8, Lcom/android/compose/animation/scene/SwipeTransition;->isUpOrLeft:Z

    if-eqz v8, :cond_6

    const/4 v8, -0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x1

    :goto_5
    iget-object v3, v3, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v9

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v9, v3

    :cond_7
    int-to-float v3, v8

    mul-float/2addr v3, v9

    invoke-interface/range {v17 .. v17}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8, v3}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v3

    :cond_8
    check-cast v6, Lcom/android/compose/animation/scene/Scale;

    invoke-static {v7, v6, v3}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp(Lcom/android/compose/animation/scene/Scale;Lcom/android/compose/animation/scene/Scale;F)Lcom/android/compose/animation/scene/Scale;

    move-result-object v3

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_d

    invoke-static {v5, v2}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v6

    invoke-static {v3, v3, v6}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp(Lcom/android/compose/animation/scene/Scale;Lcom/android/compose/animation/scene/Scale;F)Lcom/android/compose/animation/scene/Scale;

    move-result-object v3

    goto/16 :goto_1

    :cond_d
    if-eqz v3, :cond_e

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_8

    :cond_e
    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    if-nez v7, :cond_10

    :goto_7
    move-object v10, v8

    goto :goto_9

    :cond_10
    :goto_8
    move-object v10, v7

    :goto_9
    if-eqz v10, :cond_21

    iget-object v3, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v12, v10, Lcom/android/compose/animation/scene/Element$SceneState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v3, v5, v12}, Lcom/android/compose/animation/scene/TransformationSpecImpl;->transformations$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/ElementTransformations;

    move-result-object v3

    iget-object v3, v3, Lcom/android/compose/animation/scene/ElementTransformations;->drawScale:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    if-nez v3, :cond_11

    sget-object v3, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :cond_11
    sget-object v6, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    move-object v6, v3

    move-object v7, v0

    move-object v8, v12

    move-object/from16 p0, v11

    move-object v11, v2

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v12, p0

    invoke-interface/range {v6 .. v12}, Lcom/android/compose/animation/scene/transformation/PropertyTransformation;->transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v8

    invoke-interface {v3}, Lcom/android/compose/animation/scene/transformation/Transformation;->getRange()Lcom/android/compose/animation/scene/transformation/TransformationRange;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3, v8}, Lcom/android/compose/animation/scene/transformation/TransformationRange;->progress(F)F

    move-result v8

    :cond_13
    invoke-virtual {v0, v15}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    check-cast v6, Lcom/android/compose/animation/scene/Scale;

    invoke-static {v6, v7, v8}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp(Lcom/android/compose/animation/scene/Scale;Lcom/android/compose/animation/scene/Scale;F)Lcom/android/compose/animation/scene/Scale;

    move-result-object v0

    :goto_a
    move-object v3, v0

    goto :goto_b

    :cond_14
    check-cast v6, Lcom/android/compose/animation/scene/Scale;

    invoke-static {v7, v6, v8}, Lcom/android/compose/ui/util/MathHelpersKt;->lerp(Lcom/android/compose/animation/scene/Scale;Lcom/android/compose/animation/scene/Scale;F)Lcom/android/compose/animation/scene/Scale;

    move-result-object v0

    goto :goto_a

    :goto_b
    check-cast v3, Lcom/android/compose/animation/scene/Scale;

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    sget-object v6, Lcom/android/compose/animation/scene/Scale;->Zero:Lcom/android/compose/animation/scene/Scale;

    iget-object v7, v4, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    new-instance v8, Lcom/android/compose/animation/scene/Scale;

    iget v9, v7, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    iget v10, v3, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    sub-float v18, v9, v10

    iget v9, v7, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    iget v10, v3, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    sub-float v19, v9, v10

    iget-wide v9, v7, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v7

    iget-wide v11, v3, Lcom/android/compose/animation/scene/Scale;->pivot:J

    if-eqz v7, :cond_15

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    :goto_c
    move-wide/from16 v20, v9

    goto :goto_d

    :cond_15
    invoke-static {v9, v10, v1}, Lcom/android/compose/animation/scene/ElementKt;->getDrawScale$specifiedOrCenter(JLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J

    move-result-wide v9

    invoke-static {v11, v12, v1}, Lcom/android/compose/animation/scene/ElementKt;->getDrawScale$specifiedOrCenter(JLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v9

    goto :goto_c

    :goto_d
    const/16 v22, 0x0

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v22}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v4, Lcom/android/compose/animation/scene/Element$SceneState;->scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

    if-nez v2, :cond_16

    goto :goto_e

    :cond_16
    iget-object v7, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v7, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    :cond_17
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v7, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {v5, v2}, Lcom/android/compose/animation/scene/ElementKt;->isSharedElementEnabled(Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/TransitionState$Transition;)Z

    move-result v5

    if-eqz v5, :cond_19

    iput-object v8, v7, Lcom/android/compose/animation/scene/Element$SceneState;->scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

    :cond_19
    :goto_e
    iput-object v0, v4, Lcom/android/compose/animation/scene/Element$SceneState;->scaleBeforeInterruption:Lcom/android/compose/animation/scene/Scale;

    :cond_1a
    iget-object v0, v4, Lcom/android/compose/animation/scene/Element$SceneState;->scaleInterruptionDelta:Lcom/android/compose/animation/scene/Scale;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    if-nez v2, :cond_1b

    goto :goto_11

    :cond_1b
    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Lcom/android/compose/animation/scene/TransitionState$Transition;->interruptionProgress$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-nez v5, :cond_1c

    goto :goto_11

    :cond_1c
    new-instance v5, Lcom/android/compose/animation/scene/Scale;

    iget v6, v3, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    iget v7, v0, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    mul-float/2addr v7, v2

    add-float/2addr v7, v6

    iget v6, v0, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    mul-float/2addr v6, v2

    iget v8, v3, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    add-float/2addr v8, v6

    iget-wide v9, v3, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v3

    iget-wide v11, v0, Lcom/android/compose/animation/scene/Scale;->pivot:J

    if-eqz v3, :cond_1d

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    :goto_f
    move-wide v9, v2

    goto :goto_10

    :cond_1d
    invoke-static {v9, v10, v1}, Lcom/android/compose/animation/scene/ElementKt;->getDrawScale$specifiedOrCenter(JLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J

    move-result-wide v9

    invoke-static {v11, v12, v1}, Lcom/android/compose/animation/scene/ElementKt;->getDrawScale$specifiedOrCenter(JLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    goto :goto_f

    :goto_10
    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v5

    :cond_1e
    :goto_11
    iput-object v3, v4, Lcom/android/compose/animation/scene/Element$SceneState;->lastScale:Lcom/android/compose/animation/scene/Scale;

    sget-object v0, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    invoke-virtual {v3, v0}, Lcom/android/compose/animation/scene/Scale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    goto :goto_12

    :cond_1f
    iget v0, v3, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    iget v2, v3, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    iget-wide v3, v3, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v3

    :cond_20
    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v5, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v8, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v8, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    :goto_12
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTraverseKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementNode;->traverseKey:Ljava/lang/Object;

    return-object p0
.end method

.method public final isMeasurementApproachInProgress-ozmzZPI(J)Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->isTransitioning$default(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;I)Z

    move-result p0

    return p0
.end method

.method public final isPlacementApproachInProgress(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/LayoutCoordinates;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->isTransitioning$default(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;I)Z

    move-result p0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget-object p3, p0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {p4, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p4

    iget-object p3, p3, Lcom/android/compose/animation/scene/Element$SceneState;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v0, Lcom/android/compose/animation/scene/ElementNode$measure$1$1;

    invoke-direct {v0, p2, p0}, Lcom/android/compose/animation/scene/ElementNode$measure$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;Lcom/android/compose/animation/scene/ElementNode;)V

    invoke-static {p1, p3, p4, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAttach()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/ElementNode;->updateElementAndSceneValues()V

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->nodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/compose/animation/scene/ElementNode$addNodeToSceneState$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/compose/animation/scene/ElementNode$addNodeToSceneState$1;-><init>(Lcom/android/compose/animation/scene/ElementNode;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDetach()V
    .locals 4

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->nodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/android/compose/animation/scene/ElementNode;->Companion:Lcom/android/compose/animation/scene/ElementNode$Companion;

    iget-object v3, p0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-static {v2, v3, v0, v1}, Lcom/android/compose/animation/scene/ElementNode$Companion;->access$maybePruneMaps(Lcom/android/compose/animation/scene/ElementNode$Companion;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    iput-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    return-void
.end method

.method public final updateElementAndSceneValues()V
    .locals 4

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v1, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elements:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementNode;->key:Lcom/android/compose/animation/scene/ElementKey;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/Element;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/compose/animation/scene/Element;

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementNode;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-direct {v1, v2}, Lcom/android/compose/animation/scene/Element;-><init>(Lcom/android/compose/animation/scene/ElementKey;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elements:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementNode;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v1, p0, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementNode;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v2, v0, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v1, v1, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/Element$SceneState;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/compose/animation/scene/Element$SceneState;

    iget-object v3, v0, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {v2, v3}, Lcom/android/compose/animation/scene/Element$SceneState;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object v2, p0, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    return-void
.end method
