.class public abstract Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Empty:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/ComposableSingletons$VolumePanelRadioButtonsKt;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/ComposableSingletons$VolumePanelRadioButtonsKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/ComposableSingletons$VolumePanelRadioButtonsKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sput-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt;->Empty:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method

.method public static final VolumePanelRadioButtonBar-cjTkxnM(Landroidx/compose/ui/Modifier;FFFLandroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v3, 0x30

    move-object/from16 v4, p8

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x23814c50

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v6, v10, 0x1

    const/4 v7, 0x2

    const/4 v15, 0x4

    if-eqz v6, :cond_0

    or-int/lit8 v11, v9, 0x6

    move v12, v11

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v9, 0xe

    if-nez v11, :cond_2

    move-object/from16 v11, p0

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v15

    goto :goto_0

    :cond_1
    move v12, v7

    :goto_0
    or-int/2addr v12, v9

    goto :goto_1

    :cond_2
    move-object/from16 v11, p0

    move v12, v9

    :goto_1
    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_4

    or-int/2addr v12, v3

    :cond_3
    move/from16 v14, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v14, v9, 0x70

    if-nez v14, :cond_3

    move/from16 v14, p1

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v2

    goto :goto_2

    :cond_5
    move/from16 v16, v1

    :goto_2
    or-int v12, v12, v16

    :goto_3
    and-int/lit8 v16, v10, 0x4

    if-eqz v16, :cond_7

    or-int/lit16 v12, v12, 0x180

    :cond_6
    move/from16 v15, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v15, v9, 0x380

    if-nez v15, :cond_6

    move/from16 v15, p2

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x100

    goto :goto_4

    :cond_8
    const/16 v17, 0x80

    :goto_4
    or-int v12, v12, v17

    :goto_5
    and-int/lit8 v17, v10, 0x8

    if-eqz v17, :cond_a

    or-int/lit16 v12, v12, 0xc00

    :cond_9
    move/from16 v3, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v3, v9, 0x1c00

    if-nez v3, :cond_9

    move/from16 v3, p3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x800

    goto :goto_6

    :cond_b
    const/16 v19, 0x400

    :goto_6
    or-int v12, v12, v19

    :goto_7
    and-int/2addr v1, v10

    if-eqz v1, :cond_c

    or-int/lit16 v12, v12, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    const v19, 0xe000

    and-int v19, v9, v19

    move-object/from16 v7, p4

    if-nez v19, :cond_e

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x4000

    goto :goto_8

    :cond_d
    const/16 v20, 0x2000

    :goto_8
    or-int v12, v12, v20

    :cond_e
    :goto_9
    and-int/2addr v2, v10

    if-eqz v2, :cond_f

    const/high16 v20, 0x30000

    or-int v12, v12, v20

    move-object/from16 v5, p5

    goto :goto_b

    :cond_f
    const/high16 v20, 0x70000

    and-int v20, v9, v20

    move-object/from16 v5, p5

    if-nez v20, :cond_11

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v12, v12, v20

    :cond_11
    :goto_b
    const/high16 v20, 0x380000

    and-int v20, v9, v20

    if-nez v20, :cond_13

    and-int/lit8 v20, v10, 0x40

    move-object/from16 v0, p6

    if-nez v20, :cond_12

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v12, v12, v21

    :goto_d
    const/16 v0, 0x80

    goto :goto_e

    :cond_13
    move-object/from16 v0, p6

    goto :goto_d

    :goto_e
    and-int/2addr v0, v10

    if-eqz v0, :cond_14

    const/high16 v0, 0xc00000

    :goto_f
    or-int/2addr v12, v0

    goto :goto_10

    :cond_14
    const/high16 v0, 0x1c00000

    and-int/2addr v0, v9

    if-nez v0, :cond_16

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x800000

    goto :goto_f

    :cond_15
    const/high16 v0, 0x400000

    goto :goto_f

    :cond_16
    :goto_10
    const v0, 0x16db6db

    and-int/2addr v0, v12

    const v12, 0x492492

    if-ne v0, v12, :cond_18

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v8, p6

    move-object v6, v5

    move-object v1, v11

    move v2, v14

    move v5, v3

    move v3, v15

    goto/16 :goto_24

    :cond_18
    :goto_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v0, 0x1

    and-int/lit8 v12, v9, 0x1

    if-eqz v12, :cond_1a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_19

    goto :goto_12

    :cond_19
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v6, p6

    move-object v0, v11

    move v1, v14

    move v2, v15

    goto/16 :goto_17

    :cond_1a
    :goto_12
    if-eqz v6, :cond_1b

    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_13

    :cond_1b
    move-object v6, v11

    :goto_13
    if-eqz v13, :cond_1c

    sget-object v11, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultIndicatorBackgroundPadding:F

    goto :goto_14

    :cond_1c
    move v11, v14

    :goto_14
    if-eqz v16, :cond_1d

    sget-object v12, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v12, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultSpacing:F

    goto :goto_15

    :cond_1d
    move v12, v15

    :goto_15
    if-eqz v17, :cond_1e

    sget-object v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultLabelIndicatorBackgroundSpacing:F

    :cond_1e
    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultIndicatorCornerRadius:F

    invoke-static {v1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/DpCornerSize;

    move-result-object v1

    move-object v7, v1

    :cond_1f
    if-eqz v2, :cond_20

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultIndicatorBackgroundCornerRadius:F

    invoke-static {v1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/DpCornerSize;

    move-result-object v1

    move-object v5, v1

    :cond_20
    and-int/lit8 v1, v10, 0x40

    if-eqz v1, :cond_21

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x2c01d31b

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    iget-wide v1, v1, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v13

    iget-wide v13, v13, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v15

    move-wide/from16 v16, v1

    iget-wide v0, v15, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    move/from16 p0, v3

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v15

    move-object/from16 p1, v5

    move-object/from16 v20, v6

    iget-wide v5, v15, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v15

    iget-wide v9, v15, Landroidx/compose/material3/ColorScheme;->onSurface:J

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v15, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;

    const/16 v37, 0x0

    move-object/from16 v24, v15

    move-wide/from16 v25, v16

    move-wide/from16 v27, v13

    move-wide/from16 v29, v0

    move-wide/from16 v31, v2

    move-wide/from16 v33, v5

    move-wide/from16 v35, v9

    invoke-direct/range {v24 .. v37}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v3, p0

    move-object/from16 v5, p1

    move v1, v11

    move v2, v12

    move-object v6, v15

    :goto_16
    move-object/from16 v0, v20

    goto :goto_17

    :cond_21
    move/from16 p0, v3

    move-object/from16 p1, v5

    move-object/from16 v20, v6

    move-object/from16 v6, p6

    move v1, v11

    move v2, v12

    goto :goto_16

    :goto_17
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v9, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;

    invoke-direct {v9}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;-><init>()V

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v9, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;->selectedIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3d

    iget-object v10, v9, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;->items:Ljava/util/List;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v13, :cond_22

    sget-object v12, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v12, v4}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v12

    invoke-static {v12, v4}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v12

    :cond_22
    check-cast v12, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v12, v12, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v14, -0x4a11a310

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_23

    new-instance v14, Landroidx/compose/animation/core/Animatable;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v13, Lkotlin/jvm/internal/IntCompanionObject;->$r8$clinit:I

    sget-object v13, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v20, 0x0

    move-object/from16 p0, v14

    move-object/from16 p1, v11

    move-object/from16 p2, v13

    move-object/from16 p3, v15

    move-object/from16 p4, v16

    move/from16 p5, v17

    move-object/from16 p6, v20

    invoke-direct/range {p0 .. p6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v14, Landroidx/compose/animation/core/Animatable;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/Density;

    const/4 v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v13, v1

    sget-object v15, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sub-float v13, v2, v13

    invoke-interface {v11, v13}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v11

    if-gez v11, :cond_24

    const/4 v11, 0x0

    :cond_24
    new-instance v13, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    iget v8, v9, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;->selectedIndex:I

    move/from16 p6, v3

    new-instance v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$1$1;

    invoke-direct {v3, v12, v14}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;)V

    invoke-direct {v13, v15, v8, v11, v3}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;-><init>(IIILkotlin/jvm/functions/Function1;)V

    iget v3, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v15, v4, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v15, :cond_3c

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v24, v0

    iget-boolean v0, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_25

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_25
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_18
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    move-object/from16 v25, v9

    iget-boolean v9, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_26

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto :goto_19

    :cond_26
    move-object/from16 v26, v10

    :goto_19
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_27
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v10, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->ButtonsBackground:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-static {v9, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    move-object/from16 p0, v12

    iget-wide v11, v6, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;->indicatorBackgroundColor:J

    sget-object v17, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-object/from16 p1, v3

    new-instance v3, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-direct {v3, v5, v5, v5, v5}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    invoke-static {v10, v11, v12, v3}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Indicator:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-static {v9, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v10, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$1;

    invoke-direct {v10, v14}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$1;-><init>(Landroidx/compose/animation/core/Animatable;)V

    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v10, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-direct {v10, v7, v7, v7, v7}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    iget-wide v11, v6, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;->indicatorColor:J

    invoke-static {v3, v11, v12, v10}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Buttons:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-static {v9, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v9

    iget v10, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v4, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v15, :cond_3b

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_28

    move-object/from16 v12, p0

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_28
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1a
    invoke-static {v4, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v11, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_2a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_1c

    :cond_29
    :goto_1b
    move-object/from16 v0, p1

    goto :goto_1d

    :cond_2a
    :goto_1c
    invoke-static {v10, v4, v10, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_1b

    :goto_1d
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const v3, 0x70fa02bc

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v3, :cond_34

    move-object/from16 v10, v26

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;

    move-object/from16 v14, v25

    iget v12, v14, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;->selectedIndex:I

    if-ne v8, v12, :cond_2b

    const/4 v12, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v12, 0x0

    :goto_1f
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move/from16 p0, v3

    const/16 v9, 0x30

    int-to-float v3, v9

    invoke-static {v13, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    invoke-virtual {v0, v3, v9, v13}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v9, 0x197ffbbc

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v9, :cond_2c

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v9, :cond_2d

    :cond_2c
    new-instance v13, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$2$1$1;

    invoke-direct {v13, v11, v12}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$2$1$1;-><init>(Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;Z)V

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v3, v9, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    new-instance v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$2$2;

    invoke-direct {v3, v10, v8}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$2$2;-><init>(Ljava/util/List;I)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x1c

    move-object/from16 v30, v3

    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 p1, v0

    const/16 v0, 0x36

    invoke-static {v9, v13, v4, v0}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v9, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v4, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v26, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    if-eqz v15, :cond_33

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v27, v7

    iget-boolean v7, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_2e

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    :cond_2e
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_20
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_2f

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    :cond_2f
    invoke-static {v9, v4, v9, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_30
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const v3, 0x197ffe82

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v3, v11, Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;->icon:Lkotlin/jvm/functions/Function3;

    sget-object v5, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt;->Empty:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    if-eq v3, v5, :cond_32

    sget-object v3, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    if-eqz v12, :cond_31

    iget-wide v11, v6, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;->selectedIconColor:J

    goto :goto_21

    :cond_31
    iget-wide v11, v6, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;->iconColor:J

    :goto_21
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$2$3$1;

    invoke-direct {v5, v10, v8, v0}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$2$3$1;-><init>(Ljava/util/List;ILandroidx/compose/foundation/layout/RowScope;)V

    const v0, -0x4627b1b4

    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v5, 0x38

    invoke-static {v3, v0, v4, v5}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_32
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    add-int/2addr v8, v3

    move/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v25, v14

    move-object/from16 v5, v26

    move-object/from16 v7, v27

    move-object/from16 v26, v10

    goto/16 :goto_1e

    :cond_33
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_34
    move-object/from16 v27, v7

    move-object/from16 v14, v25

    move-object/from16 v10, v26

    const/4 v0, 0x0

    const/4 v3, 0x1

    move-object/from16 v26, v5

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Labels:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-static {v0, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, p6

    move/from16 p3, v1

    move/from16 p4, v5

    move/from16 p5, v3

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$3;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$3;

    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v7, 0x0

    invoke-static {v3, v5, v4, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v5, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    if-eqz v15, :cond_3a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_35

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    :cond_35
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_22
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_36

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    :cond_36
    invoke-static {v5, v4, v5, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_37
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const v3, 0x70fa0a64

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v3, :cond_38

    const/4 v7, 0x4

    int-to-float v8, v7

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v11, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v15, v11}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v9

    invoke-static {v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v18

    new-instance v11, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$4$1;

    invoke-direct {v11, v10, v5}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$4$1;-><init>(Ljava/util/List;I)V

    new-instance v8, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$4$2;

    invoke-direct {v8, v10, v5, v6, v14}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$2$4$2;-><init>(Ljava/util/List;ILcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarScopeImpl;)V

    const v13, 0xeafd001

    invoke-static {v13, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/high16 v22, 0x30c00000

    const/16 v23, 0x174

    move-object/from16 v25, v14

    move-object v14, v9

    move v9, v15

    move-object v15, v8

    move-object/from16 v21, v4

    invoke-static/range {v11 .. v23}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v8, 0x1

    add-int/2addr v5, v8

    move-object/from16 v14, v25

    goto :goto_23

    :cond_38
    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move/from16 v5, p6

    move v3, v2

    move-object v8, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move v2, v1

    move-object/from16 v1, v24

    :goto_24
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_39

    new-instance v12, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$3;

    move-object v0, v12

    move v4, v5

    move-object v5, v7

    move-object v7, v8

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonsKt$VolumePanelRadioButtonBar$3;-><init>(Landroidx/compose/ui/Modifier;FFFLandroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarColors;Lkotlin/jvm/functions/Function1;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void

    :cond_3a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_3b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_3c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one item should be selected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
