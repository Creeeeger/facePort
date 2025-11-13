.class public final Landroidx/compose/animation/EnterExitTransitionModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public currentAlignment:Landroidx/compose/ui/Alignment;

.field public enter:Landroidx/compose/animation/EnterTransition;

.field public exit:Landroidx/compose/animation/ExitTransition;

.field public graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

.field public isEnabled:Lkotlin/jvm/functions/Function0;

.field public lookaheadSize:J

.field public offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final sizeTransitionSpec:Lkotlin/jvm/functions/Function1;

.field public slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final slideSpec:Lkotlin/jvm/functions/Function1;

.field public transition:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p5, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransition;

    iput-object p6, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransition;

    iput-object p7, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->isEnabled:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    sget-wide p1, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    iput-wide p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-static {p2, p2, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$sizeTransitionSpec$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$sizeTransitionSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;)V

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeTransitionSpec:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;)V

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideSpec:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    sget-object v2, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransition;

    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v0, v0, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransition;

    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransition;

    check-cast v0, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v0, v0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    if-nez v0, :cond_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransition;

    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    iget-object v2, v2, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    iget-object v3, v3, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iput-object v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    :cond_1
    iput-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v2

    const-wide v5, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v2, :cond_3

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v7, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v4, v7}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    shr-long v3, v7, v3

    long-to-int v0, v3

    and-long v3, v7, v5

    long-to-int v3, v3

    new-instance v4, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$1;

    invoke-direct {v4, v2}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {v1, v0, v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->isEnabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    iget-object v7, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v8, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/EnterTransition;

    iget-object v9, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/animation/ExitTransition;

    if-eqz v7, :cond_4

    new-instance v10, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    invoke-direct {v10, v8, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    new-instance v11, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;

    invoke-direct {v11, v8, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    invoke-virtual {v7, v10, v11}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    iget-object v10, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v10, :cond_5

    new-instance v11, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;

    invoke-direct {v11, v8, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    new-instance v12, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2;

    invoke-direct {v12, v8, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    invoke-virtual {v10, v11, v12}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, v4

    :goto_2
    iget-object v11, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/animation/core/Transition;

    iget-object v11, v11, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v11}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    if-ne v11, v12, :cond_8

    move-object v11, v8

    check-cast v11, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v11, v11, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v11, v11, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v11, :cond_6

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    iget-wide v13, v11, Landroidx/compose/animation/Scale;->transformOrigin:J

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_3

    :cond_6
    move-object v11, v9

    check-cast v11, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v11, v11, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v11, v11, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v11, :cond_7

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    iget-wide v13, v11, Landroidx/compose/animation/Scale;->transformOrigin:J

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_3

    :cond_7
    move-object v12, v4

    goto :goto_3

    :cond_8
    move-object v11, v9

    check-cast v11, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v11, v11, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v11, v11, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v11, :cond_9

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    iget-wide v13, v11, Landroidx/compose/animation/Scale;->transformOrigin:J

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_3

    :cond_9
    move-object v11, v8

    check-cast v11, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v11, v11, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v11, v11, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v11, :cond_7

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    iget-wide v13, v11, Landroidx/compose/animation/Scale;->transformOrigin:J

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    :goto_3
    iget-object v2, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v2, :cond_a

    sget-object v11, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1;

    new-instance v13, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;

    invoke-direct {v13, v12, v8, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;-><init>(Landroidx/compose/ui/graphics/TransformOrigin;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    invoke-virtual {v2, v11, v13}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v2

    goto :goto_4

    :cond_a
    move-object v2, v4

    :goto_4
    new-instance v8, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;

    invoke-direct {v8, v7, v10, v2}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;)V

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    iget v2, v12, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v7, v12, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v2, v7}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v9

    iget-wide v13, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    sget-wide v4, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    invoke-static {v13, v14, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    iget-wide v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    goto :goto_5

    :cond_b
    move-wide v4, v9

    :goto_5
    iget-object v6, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v6, :cond_c

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeTransitionSpec:Lkotlin/jvm/functions/Function1;

    new-instance v7, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    invoke-direct {v7, v0, v4, v5}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V

    invoke-virtual {v6, v2, v7}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    iget-wide v9, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    :cond_d
    move-wide/from16 v6, p3

    invoke-static {v6, v7, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v6

    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_e

    sget-object v11, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$1;

    new-instance v13, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;

    invoke-direct {v13, v0, v4, v5}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V

    invoke-virtual {v2, v11, v13}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v13, v2, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    move-wide/from16 v23, v13

    goto :goto_7

    :cond_e
    move-wide/from16 v23, v9

    :goto_7
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v2, :cond_f

    iget-object v11, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideSpec:Lkotlin/jvm/functions/Function1;

    new-instance v13, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$slideOffset$1;

    invoke-direct {v13, v0, v4, v5}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$slideOffset$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V

    invoke-virtual {v2, v11, v13}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v13, v2, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_8

    :cond_f
    move-wide v13, v9

    :goto_8
    iget-object v0, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    if-eqz v0, :cond_10

    sget-object v22, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v17, v0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-interface/range {v17 .. v22}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v9

    :cond_10
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v13

    shr-long v2, v6, v3

    long-to-int v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v2, v2

    new-instance v3, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;

    move-object v11, v3

    move-wide/from16 v15, v23

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;JJLkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_11
    move-wide/from16 v6, p3

    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v4, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$3$1;

    invoke-direct {v4, v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$3$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/Measurable;I)I
    .locals 0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public final onAttach()V
    .locals 2

    sget-wide v0, Landroidx/compose/animation/AnimationModifierKt;->InvalidSize:J

    iput-wide v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    return-void
.end method
