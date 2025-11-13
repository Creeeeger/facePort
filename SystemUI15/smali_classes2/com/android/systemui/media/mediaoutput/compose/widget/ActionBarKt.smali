.class public abstract Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SecTitle(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    const/16 v0, 0x30

    const/4 v1, 0x4

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x60985d3a

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p5, 0x1

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v7, v4, 0x6

    move v8, v7

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v4, 0xe

    if-nez v7, :cond_2

    move-object/from16 v7, p0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    or-int/2addr v8, v4

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    move v8, v4

    :goto_1
    and-int/lit8 v9, p5, 0x2

    if-eqz v9, :cond_3

    or-int/2addr v8, v0

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v4, 0x70

    if-nez v9, :cond_5

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v8, v9

    :cond_5
    :goto_3
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v8, v8, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v4, 0x380

    if-nez v1, :cond_8

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v8, v1

    :cond_8
    :goto_5
    and-int/lit16 v1, v8, 0x2db

    const/16 v8, 0x92

    if-ne v1, v8, :cond_a

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v7

    move-object/from16 v23, v15

    goto/16 :goto_e

    :cond_a
    :goto_6
    const/4 v1, 0x0

    if-eqz v5, :cond_b

    move-object v13, v1

    goto :goto_7

    :cond_b
    move-object v13, v7

    :goto_7
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    sget-object v7, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    invoke-static {v15}, Landroidx/compose/material3/AppBarKt;->rememberTopAppBarState(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TopAppBarState;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v15}, Landroidx/compose/material3/TopAppBarDefaults;->pinnedScrollBehavior(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/PinnedScrollBehavior;

    move-result-object v7

    const/4 v8, 0x0

    int-to-float v8, v8

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalRootSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/DpSize;

    iget-wide v9, v9, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v9

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->containerWidth(Landroidx/compose/runtime/Composer;)F

    move-result v10

    sub-float/2addr v9, v10

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v10

    if-eqz v10, :cond_c

    int-to-float v10, v0

    goto :goto_8

    :cond_c
    move v10, v8

    :goto_8
    sub-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v11

    if-eqz v11, :cond_d

    int-to-float v11, v0

    goto :goto_9

    :cond_d
    move v11, v8

    :goto_9
    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_e

    move/from16 v18, v8

    goto :goto_b

    :cond_e
    const/16 v5, 0x18

    :goto_a
    int-to-float v5, v5

    move/from16 v18, v5

    goto :goto_b

    :cond_f
    const/16 v5, 0x40

    goto :goto_a

    :goto_b
    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_c
    move/from16 v20, v8

    goto :goto_d

    :cond_10
    int-to-float v8, v0

    goto :goto_c

    :goto_d
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x5

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v5, v7, Landroidx/compose/material3/PinnedScrollBehavior;->nestedScrollConnection:Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;

    invoke-static {v0, v5, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt$SecTitle$1;

    invoke-direct {v0, v9, v2, v13}, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt$SecTitle$1;-><init>(FLjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x42f8ed17

    invoke-static {v1, v15, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Transparent:J

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt$SecTitle$2;

    invoke-direct {v0, v3, v9}, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt$SecTitle$2;-><init>(Lkotlin/jvm/functions/Function3;F)V

    const v1, -0x4c72dcbc

    invoke-static {v1, v15, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const/4 v0, 0x0

    const v18, 0x180030

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v19, 0x0

    const/4 v1, 0x6

    const/16 v21, 0x3bc

    move-object/from16 v22, v13

    move-wide/from16 v13, v19

    move-object/from16 v23, v15

    move-object v15, v0

    move-object/from16 v17, v23

    move/from16 v19, v1

    move/from16 v20, v21

    invoke-static/range {v5 .. v20}, Lcom/samsung/sesl/compose/component/ScaffoldKt;->SeslScaffold-uuOAFiU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v22

    :goto_e
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt$SecTitle$3;

    move-object v0, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt$SecTitle$3;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
