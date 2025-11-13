.class public abstract Lcom/android/compose/animation/ExpandableKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final AnimatedContentInOverlay-mxx1QeM(JJLandroidx/compose/runtime/State;Landroid/view/ViewGroupOverlay;Lcom/android/compose/animation/ExpandableControllerImpl;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v11, p10

    move-object/from16 v9, p11

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1ffce9c7

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v9}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v10

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Context;

    const v0, 0x51105bf5

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0xe000000

    and-int v1, p12, v1

    const/high16 v2, 0x6000000

    xor-int/2addr v1, v2

    const/4 v14, 0x1

    const/high16 v3, 0x4000000

    if-le v1, v3, :cond_0

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    and-int v1, p12, v2

    if-ne v1, v3, :cond_2

    :cond_1
    move v1, v14

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_5

    :cond_3
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-wide/from16 v5, p2

    invoke-interface {v11, v5, v6}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpSize;->box-impl(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    iget-wide v3, v3, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v15

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v3

    invoke-static {v2, v15, v3}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v3, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;

    invoke-direct {v3, v7, v0, v1}, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;-><init>(Landroidx/compose/runtime/State;FF)V

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v1, v0

    move-object v2, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1;

    move-object v5, v0

    move-object v0, v6

    move-object/from16 v1, p4

    move-wide/from16 v2, p0

    move-object/from16 v4, p6

    move-object v13, v5

    move-object v5, v15

    move-object v15, v6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1;-><init>(Landroidx/compose/runtime/State;JLcom/android/compose/animation/ExpandableControllerImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x428b0789

    invoke-direct {v0, v1, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v13, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static/range {p8 .. p8}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static/range {p8 .. p8}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    sget-object v0, Lcom/android/compose/animation/ViewTreeSavedStateRegistryOwner;->INSTANCE:Lcom/android/compose/animation/ViewTreeSavedStateRegistryOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p8 .. p8}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    invoke-virtual {v13, v10}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v13

    :cond_5
    check-cast v1, Landroidx/compose/ui/platform/ComposeView;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;

    move-object/from16 v10, p9

    invoke-direct {v0, v8, v1, v7, v10}, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;-><init>(Landroid/view/ViewGroupOverlay;Landroidx/compose/ui/platform/ComposeView;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V

    sget v2, Landroidx/compose/ui/platform/ComposeView;->$r8$clinit:I

    invoke-static {v8, v1, v0, v9}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_6

    new-instance v14, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;

    move-object v0, v14

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;-><init>(JJLandroidx/compose/runtime/State;Landroid/view/ViewGroupOverlay;Lcom/android/compose/animation/ExpandableControllerImpl;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;I)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final Expandable(Lcom/android/compose/animation/ExpandableController;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    const/16 v0, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object/from16 v15, p5

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x6fe7c88e

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, p7, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v6, 0xe

    if-nez v8, :cond_2

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    or-int/2addr v8, v6

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v6, 0x70

    if-nez v9, :cond_3

    move-object/from16 v9, p1

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    move v10, v2

    :goto_2
    or-int/2addr v8, v10

    :goto_3
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v6, 0x380

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    :goto_5
    and-int/lit8 v11, p7, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move-object/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v6, 0x1c00

    if-nez v12, :cond_9

    move-object/from16 v12, p3

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v8, v13

    :goto_7
    and-int/lit8 v2, p7, 0x10

    const/16 v13, 0x4000

    const v14, 0xe000

    if-eqz v2, :cond_c

    or-int/lit16 v8, v8, 0x6000

    goto :goto_9

    :cond_c
    and-int v2, v6, v14

    if-nez v2, :cond_e

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v13

    goto :goto_8

    :cond_d
    const/16 v2, 0x2000

    :goto_8
    or-int/2addr v8, v2

    :cond_e
    :goto_9
    const v2, 0xb6db

    and-int/2addr v2, v8

    const/16 v0, 0x2492

    if-ne v2, v0, :cond_10

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    move-object v1, v15

    goto/16 :goto_17

    :cond_10
    :goto_a
    if-eqz v3, :cond_11

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v0, v9

    :goto_b
    if-eqz v4, :cond_12

    const/4 v3, 0x0

    goto :goto_c

    :cond_12
    move-object v3, v10

    :goto_c
    if-eqz v11, :cond_13

    const/4 v4, 0x0

    goto :goto_d

    :cond_13
    move-object v4, v12

    :goto_d
    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v12, v1

    check-cast v12, Lcom/android/compose/animation/ExpandableControllerImpl;

    const v9, 0x60273464

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/2addr v8, v14

    const/4 v14, 0x0

    if-ne v8, v13, :cond_14

    move v8, v7

    goto :goto_e

    :cond_14
    move v8, v14

    :goto_e
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v8, :cond_16

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v8, :cond_15

    goto :goto_f

    :cond_15
    move-object/from16 p2, v3

    goto :goto_10

    :cond_16
    :goto_f
    new-instance v8, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;

    move-object/from16 p2, v3

    iget-wide v2, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->contentColor:J

    invoke-direct {v8, v2, v3, v5}, Lcom/android/compose/animation/ExpandableKt$Expandable$wrappedContent$1$1;-><init>(JLkotlin/jvm/functions/Function3;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x549bbe9a

    invoke-direct {v2, v3, v7, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v2}, Landroidx/compose/runtime/MovableContentKt;->movableContentOf(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_10
    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x602738d3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v8, :cond_17

    sget-object v3, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v3

    sget-object v9, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v3, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Landroidx/compose/runtime/MutableState;

    const v9, 0x60273b8a

    invoke-static {v15, v14, v9}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v8, :cond_18

    new-instance v8, Lcom/android/compose/animation/ExpandableKt$Expandable$isAnimating$2$1;

    invoke-direct {v8, v12}, Lcom/android/compose/animation/ExpandableKt$Expandable$isAnimating$2$1;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz p2, :cond_19

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v10, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v10, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_11

    :cond_19
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_11
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object/from16 p5, v15

    iget-wide v14, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->color:J

    if-eqz v8, :cond_1b

    const v7, 0x60273e88

    move-object/from16 v13, p5

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Size;

    iget-wide v7, v3, Landroidx/compose/ui/geometry/Size;->packedValue:J

    iget-object v3, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v3, v7, v8}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v7

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v3

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v7

    invoke-static {v0, v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    iget-object v3, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->boundsInComposeViewRoot:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v9

    iget-object v3, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_1a

    iget-object v11, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    new-instance v7, Lcom/android/compose/animation/ExpandableKt$Expandable$3;

    invoke-direct {v7, v12}, Lcom/android/compose/animation/ExpandableKt$Expandable$3;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    iget-object v8, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->animatorState:Landroidx/compose/runtime/MutableState;

    iget-object v1, v12, Lcom/android/compose/animation/ExpandableControllerImpl;->density:Landroidx/compose/ui/unit/Density;

    const v19, 0x209000

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-wide v7, v14

    move-object v15, v11

    move-object/from16 v11, v17

    move-object v14, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v14

    const/4 v5, 0x0

    move-object v14, v2

    move-object v2, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-static/range {v7 .. v19}, Lcom/android/compose/animation/ExpandableKt;->AnimatedContentInOverlay-mxx1QeM(JJLandroidx/compose/runtime/State;Landroid/view/ViewGroupOverlay;Lcom/android/compose/animation/ExpandableControllerImpl;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v17, p2

    move-object v1, v2

    :goto_12
    move-object/from16 p2, v4

    goto/16 :goto_16

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnimatedContentInOverlay shouldn\'t be composed with null overlay."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object/from16 v1, p5

    move-object v8, v12

    const/4 v5, 0x0

    iget-object v9, v8, Lcom/android/compose/animation/ExpandableControllerImpl;->isDialogShowing:Landroidx/compose/runtime/MutableState;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v11, v1, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    iget-object v12, v8, Lcom/android/compose/animation/ExpandableControllerImpl;->expandable:Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;

    if-eqz v9, :cond_20

    const v9, 0x602741d5

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v9, Lcom/android/compose/animation/ExpandableKt$Expandable$updateExpandableSize$1;

    invoke-direct {v9, v3}, Lcom/android/compose/animation/ExpandableKt$Expandable$updateExpandableSize$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-static {v0, v9}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Lcom/android/compose/animation/ExpandableKt$Expandable$4;->INSTANCE:Lcom/android/compose/animation/ExpandableKt$Expandable$4;

    invoke-static {v3, v9}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v9, Lcom/android/compose/animation/ExpandableKt$Expandable$5;

    invoke-direct {v9, v8}, Lcom/android/compose/animation/ExpandableKt$Expandable$5;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    invoke-static {v3, v9}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v9, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_1f

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_1c

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_13
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v10, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_1d

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    :cond_1d
    invoke-static {v9, v1, v9, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1e
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v17, p2

    goto/16 :goto_12

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_20
    const v9, 0x602743c8

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v9, v8, Lcom/android/compose/animation/ExpandableControllerImpl;->shape:Landroidx/compose/ui/graphics/Shape;

    if-eqz p2, :cond_22

    if-eqz v4, :cond_21

    sget-object v17, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v13, Lcom/android/compose/animation/ExpandableKt$Expandable$clickModifier$1;

    move-object/from16 v7, p2

    invoke-direct {v13, v7, v8}, Lcom/android/compose/animation/ExpandableKt$Expandable$clickModifier$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/compose/animation/ExpandableControllerImpl;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x1c

    move-object/from16 v18, v4

    move-object/from16 v22, v13

    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move-object/from16 p2, v4

    move-object/from16 v17, v7

    goto :goto_14

    :cond_21
    move-object/from16 v7, p2

    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v13, v9}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    new-instance v5, Lcom/android/compose/animation/ExpandableKt$Expandable$clickModifier$2;

    invoke-direct {v5, v7, v8}, Lcom/android/compose/animation/ExpandableKt$Expandable$clickModifier$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/compose/animation/ExpandableControllerImpl;)V

    move-object/from16 p2, v4

    const/4 v4, 0x7

    move-object/from16 v17, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v13, v7, v6, v5, v4}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    goto :goto_14

    :cond_22
    move-object/from16 v17, p2

    move-object/from16 p2, v4

    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_14
    new-instance v4, Lcom/android/compose/animation/ExpandableKt$Expandable$updateExpandableSize$1;

    invoke-direct {v4, v3}, Lcom/android/compose/animation/ExpandableKt$Expandable$updateExpandableSize$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-static {v0, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v14, v15, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v8, Lcom/android/compose/animation/ExpandableControllerImpl;->borderStroke:Landroidx/compose/foundation/BorderStroke;

    if-eqz v4, :cond_23

    new-instance v5, Landroidx/compose/foundation/BorderModifierNodeElement;

    iget-object v6, v4, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    iget v4, v4, Landroidx/compose/foundation/BorderStroke;->width:F

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v9, v7}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_23
    new-instance v4, Lcom/android/compose/animation/ExpandableKt$Expandable$7;

    invoke-direct {v4, v8}, Lcom/android/compose/animation/ExpandableKt$Expandable$7;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    invoke-static {v3, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    instance-of v8, v11, Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_28

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_24

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_24
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_15
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_25

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    :cond_25
    invoke-static {v5, v1, v5, v4}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_26
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_16
    move-object/from16 v4, p2

    move-object v2, v0

    move-object/from16 v3, v17

    :goto_17
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_27

    new-instance v9, Lcom/android/compose/animation/ExpandableKt$Expandable$9;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/compose/animation/ExpandableKt$Expandable$9;-><init>(Lcom/android/compose/animation/ExpandableController;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void

    :cond_28
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final Expandable-QIcBpto(JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 39

    move-wide/from16 v14, p0

    move-object/from16 v13, p2

    move/from16 v12, p11

    move/from16 v11, p12

    const/16 v0, 0x80

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x2

    move-object/from16 v10, p10

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x2c1d226d

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, v11, 0x1

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    or-int/lit8 v5, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v12, 0xe

    if-nez v5, :cond_2

    invoke-virtual {v10, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    or-int/2addr v5, v12

    goto :goto_1

    :cond_2
    move v5, v12

    :goto_1
    and-int/2addr v3, v11

    if-eqz v3, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x70

    if-nez v3, :cond_5

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    or-int/2addr v5, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v12, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p3

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    move v9, v0

    :goto_4
    or-int/2addr v5, v9

    :goto_5
    and-int/lit16 v9, v12, 0x1c00

    if-nez v9, :cond_a

    and-int/lit8 v9, v11, 0x8

    move-wide/from16 v7, p4

    if-nez v9, :cond_9

    invoke-virtual {v10, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x800

    goto :goto_6

    :cond_9
    const/16 v16, 0x400

    :goto_6
    or-int v5, v5, v16

    goto :goto_7

    :cond_a
    move-wide/from16 v7, p4

    :goto_7
    and-int/2addr v1, v11

    const v17, 0xe000

    if-eqz v1, :cond_b

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v9, p6

    goto :goto_9

    :cond_b
    and-int v16, v12, v17

    move-object/from16 v9, p6

    if-nez v16, :cond_d

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x4000

    goto :goto_8

    :cond_c
    const/16 v18, 0x2000

    :goto_8
    or-int v5, v5, v18

    :cond_d
    :goto_9
    and-int/lit8 v18, v11, 0x20

    if-eqz v18, :cond_e

    const/high16 v19, 0x30000

    or-int v5, v5, v19

    move-object/from16 v2, p7

    goto :goto_b

    :cond_e
    const/high16 v19, 0x70000

    and-int v19, v12, v19

    move-object/from16 v2, p7

    if-nez v19, :cond_10

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v20, 0x10000

    :goto_a
    or-int v5, v5, v20

    :cond_10
    :goto_b
    and-int/lit8 v20, v11, 0x40

    if-eqz v20, :cond_11

    const/high16 v21, 0x180000

    or-int v5, v5, v21

    move-object/from16 v6, p8

    goto :goto_d

    :cond_11
    const/high16 v21, 0x380000

    and-int v21, v12, v21

    move-object/from16 v6, p8

    if-nez v21, :cond_13

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v22, 0x80000

    :goto_c
    or-int v5, v5, v22

    :cond_13
    :goto_d
    and-int/2addr v0, v11

    if-eqz v0, :cond_15

    const/high16 v0, 0xc00000

    or-int/2addr v5, v0

    :cond_14
    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    const/high16 v0, 0x1c00000

    and-int/2addr v0, v12

    if-nez v0, :cond_14

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    const/high16 v22, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v22, 0x400000

    :goto_e
    or-int v5, v5, v22

    :goto_f
    const v22, 0x16db6db

    and-int v4, v5, v22

    const v0, 0x492492

    if-ne v4, v0, :cond_18

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object v0, v10

    move-wide/from16 v37, v7

    move-object v8, v2

    move-object v7, v9

    move-object v9, v6

    move-wide/from16 v5, v37

    goto/16 :goto_1d

    :cond_18
    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v0, 0x1

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_1b

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_13

    :cond_19
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_1a

    and-int/lit16 v5, v5, -0x1c01

    :cond_1a
    move-object/from16 v18, p3

    move-object/from16 v20, v2

    :goto_11
    move/from16 v24, v5

    move-object/from16 v22, v6

    :goto_12
    move-wide/from16 v37, v7

    move-object v7, v9

    move-wide/from16 v8, v37

    goto :goto_15

    :cond_1b
    :goto_13
    if-eqz v3, :cond_1c

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_1c
    move-object/from16 v3, p3

    :goto_14
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_1d

    invoke-static {v14, v15, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v7

    and-int/lit16 v5, v5, -0x1c01

    :cond_1d
    if-eqz v1, :cond_1e

    const/4 v9, 0x0

    :cond_1e
    if-eqz v18, :cond_1f

    const/4 v2, 0x0

    :cond_1f
    if-eqz v20, :cond_20

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move/from16 v24, v5

    const/16 v22, 0x0

    goto :goto_12

    :cond_20
    move-object/from16 v20, v2

    move-object/from16 v18, v3

    goto :goto_11

    :goto_15
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v1, v24, 0x7e

    shr-int/lit8 v6, v24, 0x3

    and-int/lit16 v2, v6, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v6, 0x1c00

    or-int/2addr v1, v2

    const v2, 0x3f59b1fe

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/unit/Density;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    const v2, 0x7e26332a

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_21

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    move/from16 p3, v6

    const/4 v6, 0x0

    invoke-static {v6, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_16

    :cond_21
    move/from16 p3, v6

    :goto_16
    move-object/from16 v26, v2

    check-cast v26, Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x0

    const v2, 0x7e2633d8

    invoke-static {v10, v6, v2}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_22

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v27, v2

    check-cast v27, Landroidx/compose/runtime/MutableState;

    const v2, 0x7e263448

    const/4 v6, 0x0

    invoke-static {v10, v6, v2}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_23

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/4 v6, 0x0

    invoke-static {v6, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v28, v2

    check-cast v28, Landroidx/compose/runtime/MutableState;

    const v2, 0x7e2634ee

    const/4 v6, 0x0

    invoke-static {v10, v6, v2}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_24

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/4 v6, 0x0

    invoke-static {v6, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v25, v2

    check-cast v25, Landroidx/compose/runtime/MutableState;

    const v2, 0x7e263592    # 5.52325E37f

    const/4 v6, 0x0

    invoke-static {v10, v6, v2}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_25

    sget-object v2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v29, v2

    check-cast v29, Landroidx/compose/runtime/MutableState;

    const v2, 0x7e26363e

    const/4 v6, 0x0

    invoke-static {v10, v6, v2}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_26

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_26
    move-object v6, v2

    check-cast v6, Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v11, 0x7e26367b

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_27

    new-instance v11, Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1;

    invoke-direct {v11, v6}, Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_27
    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object/from16 p5, v6

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v11, v10}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    const v2, 0x7e2636b2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v11, 0x4

    if-le v2, v11, :cond_28

    invoke-virtual {v10, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    and-int/lit8 v2, v1, 0x6

    if-ne v2, v11, :cond_2a

    :cond_29
    const/4 v2, 0x1

    goto :goto_17

    :cond_2a
    move v2, v6

    :goto_17
    and-int/lit16 v11, v1, 0x380

    xor-int/lit16 v11, v11, 0x180

    const/16 v6, 0x100

    if-le v11, v6, :cond_2b

    invoke-virtual {v10, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v11

    if-nez v11, :cond_2c

    :cond_2b
    and-int/lit16 v11, v1, 0x180

    if-ne v11, v6, :cond_2d

    :cond_2c
    const/4 v6, 0x1

    goto :goto_18

    :cond_2d
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v2, v6

    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v11, 0x20

    if-le v6, v11, :cond_2e

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    :cond_2e
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v11, :cond_30

    :cond_2f
    const/4 v6, 0x1

    goto :goto_19

    :cond_30
    const/4 v6, 0x0

    :goto_19
    or-int/2addr v2, v6

    and-int/lit16 v6, v1, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v11, 0x800

    if-le v6, v11, :cond_31

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    :cond_31
    and-int/lit16 v1, v1, 0xc00

    if-ne v1, v11, :cond_33

    :cond_32
    const/16 v23, 0x1

    goto :goto_1a

    :cond_33
    const/16 v23, 0x0

    :goto_1a
    or-int v1, v2, v23

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_35

    if-ne v2, v0, :cond_34

    goto :goto_1b

    :cond_34
    move/from16 v30, p3

    move-object/from16 v32, v7

    move-wide/from16 v33, v8

    move-object v0, v10

    goto :goto_1c

    :cond_35
    :goto_1b
    new-instance v11, Lcom/android/compose/animation/ExpandableControllerImpl;

    move-object v0, v11

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-wide v3, v8

    move-object/from16 v23, v5

    move-object/from16 v5, p2

    move/from16 v30, p3

    move-object/from16 v31, p5

    move-object v6, v7

    move-object/from16 v32, v7

    move-object/from16 v7, v23

    move-wide/from16 v33, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v26

    move-object/from16 v35, v10

    move-object/from16 v10, v27

    move-object/from16 v36, v11

    move-object/from16 v11, v28

    move-object/from16 v12, v25

    move-object/from16 v13, v29

    move-object/from16 v14, v21

    move-object/from16 v15, v31

    invoke-direct/range {v0 .. v16}, Lcom/android/compose/animation/ExpandableControllerImpl;-><init>(JJLandroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1c
    move-object v4, v2

    check-cast v4, Lcom/android/compose/animation/ExpandableControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v1, v30, 0x70

    shr-int/lit8 v2, v24, 0x9

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v1, v3

    and-int v2, v2, v17

    or-int v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    move-object/from16 v8, p9

    move-object v9, v0

    invoke-static/range {v4 .. v11}, Lcom/android/compose/animation/ExpandableKt;->Expandable(Lcom/android/compose/animation/ExpandableController;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v32

    move-wide/from16 v5, v33

    :goto_1d
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_36

    new-instance v14, Lcom/android/compose/animation/ExpandableKt$Expandable$1;

    move-object v0, v14

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/compose/animation/ExpandableKt$Expandable$1;-><init>(JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method

.method public static final measureAndLayoutComposeViewInOverlay(Landroid/view/View;Lcom/android/systemui/animation/TransitionAnimator$State;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    sub-int/2addr v2, v1

    iget v3, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    sub-int/2addr v3, v0

    iget v4, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    sub-int/2addr v4, v1

    iget p1, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static final shrink-Kibmq7A(FJ)J
    .locals 2

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    sub-float/2addr v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p1

    sub-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide p0

    return-wide p0
.end method
