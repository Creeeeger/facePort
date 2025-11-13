.class public abstract Lcom/android/systemui/people/ui/compose/PeopleScreenKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PeopleSpacePadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x18

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->PeopleSpacePadding:F

    return-void
.end method

.method public static final ConversationList(ILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x5e95b11e

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v7, 0x10

    int-to-float v8, v7

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xe

    move-object v7, v5

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v8

    iget-object v15, v8, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v8, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/compose/theme/AndroidColorScheme;

    iget-object v8, v8, Lcom/android/compose/theme/AndroidColorScheme;->deprecated:Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

    iget-wide v13, v8, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;->colorAccentPrimaryVariant:J

    const/16 v23, 0x0

    const/16 v26, 0x30

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v24, v13

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v29, v15

    move-object/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const v28, 0xfff8

    move-object v3, v5

    move-object v5, v7

    move-object/from16 p3, v6

    move-wide/from16 v6, v24

    move-object/from16 v24, v29

    move-object/from16 v25, p3

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/16 v4, 0xa

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v11, p3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v14, 0x1

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_3

    move-object v10, v4

    check-cast v10, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    const v4, -0x231178c7

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-lez v13, :cond_0

    sget-object v4, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/compose/theme/AndroidColorScheme;

    iget-object v4, v4, Lcom/android/compose/theme/AndroidColorScheme;->deprecated:Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

    iget-wide v6, v4, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;->colorBackground:J

    const/4 v4, 0x2

    int-to-float v5, v4

    const/16 v16, 0x1

    const/4 v4, 0x0

    const/16 v9, 0x30

    move-object v8, v11

    move-object v14, v10

    move/from16 v10, v16

    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/DividerKt;->Divider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_0
    move-object v14, v10

    :goto_1
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v4, v14, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v4}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, -0x2cadbb69

    invoke-virtual {v11, v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startMovableGroup(ILjava/lang/Object;)V

    if-nez v13, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v12

    :goto_2
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-ne v13, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v12

    :goto_3
    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v9, v4, 0x8

    move-object v4, v14

    move-object/from16 v5, p2

    move-object v8, v11

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->Tile(Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move v13, v15

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v4, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;

    move-object/from16 v5, p2

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;-><init>(ILjava/util/List;Lkotlin/jvm/functions/Function1;I)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final PeopleScreen(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x313a03fc

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->priorityTiles:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v2, v15}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->recentTiles:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v3, v15}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iget-object v5, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->result:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v15, v5, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/compose/theme/AndroidColorScheme;

    iget-object v4, v4, Lcom/android/compose/theme/AndroidColorScheme;->deprecated:Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

    iget-wide v5, v4, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;->colorBackground:J

    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v7, v8}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    new-instance v7, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;

    invoke-direct {v7, v0, v2, v3}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    const v2, 0x35a036d7

    invoke-static {v2, v15, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-wide v12, v4, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;->textColorPrimary:J

    const/4 v14, 0x0

    const v16, 0xc00006

    const/16 v17, 0x72

    move-object v2, v8

    move-wide v4, v5

    move-wide v6, v12

    move v8, v14

    move-object v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$3;

    move/from16 v4, p3

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$3;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;I)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final Tile(Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v13, p4

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x59bfa5a1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/theme/AndroidColorScheme;

    iget-object v0, v0, Lcom/android/compose/theme/AndroidColorScheme;->deprecated:Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;

    const v1, 0x7f070c8c

    invoke-static {v1, v13}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/Composer;)F

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    int-to-float v3, v2

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :goto_1
    iget-wide v4, v0, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;->colorSurface:J

    invoke-static {v3, v3, v1, v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$1;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-direct {v2, v15, v14}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;)V

    const v3, -0x1cfde346

    invoke-static {v3, v13, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-wide v10, v0, Lcom/android/compose/theme/AndroidColorScheme$DeprecatedValues;->textColorPrimary:J

    const/4 v6, 0x0

    const/high16 v12, 0xc00000

    const/16 v16, 0x71

    move-object v0, v2

    move-wide v2, v4

    move-wide v4, v10

    move-object v10, v13

    move v11, v12

    move/from16 v12, v16

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;

    move-object v3, v1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;Lkotlin/jvm/functions/Function1;ZZI)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final access$PeopleScreenWithConversations(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p3

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x526a4713

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v15, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string/jumbo v5, "top_level_with_conversations"

    invoke-static {v15, v5}, Lcom/android/systemui/compose/modifiers/SysuiTestTagKt;->sysuiResTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v12, 0x0

    invoke-static {v13, v14, v4, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget v7, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v9, v4, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v10, v9, Landroidx/compose/runtime/Applier;

    const/16 v29, 0x0

    if-eqz v10, :cond_f

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_0

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_1

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_1
    move-object/from16 v17, v14

    :goto_1
    invoke-static {v7, v4, v7, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v5, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v15, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget v7, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->PeopleSpacePadding:F

    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move/from16 v19, v7

    const/16 v7, 0x30

    invoke-static {v13, v12, v4, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget v12, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 v20, v13

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v4, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v10, :cond_e

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v21, v10

    iget-boolean v10, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_3

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    invoke-static {v4, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v13, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_4

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    invoke-static {v12, v4, v12, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_5
    invoke-static {v4, v5, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v5, 0x7f131110

    invoke-static {v5, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v24

    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v5

    iget-object v13, v5, Landroidx/compose/material3/Typography;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v5, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v30, Landroidx/compose/ui/text/style/TextAlign;->Center:I

    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v16

    const/16 v27, 0x0

    const v28, 0xfdfe

    const/4 v5, 0x0

    const-wide/16 v22, 0x0

    move-object v12, v6

    move/from16 v10, v19

    move-wide/from16 v6, v22

    move-object/from16 v32, v8

    move-object/from16 v31, v9

    move-wide/from16 v8, v22

    const/16 v19, 0x0

    move/from16 v34, v10

    move/from16 v33, v21

    move-object/from16 v10, v19

    move-object/from16 v35, v11

    move-object/from16 v11, v19

    move-object/from16 v36, v12

    move-object/from16 v12, v19

    const-wide/16 v18, 0x0

    move-object/from16 v25, v13

    move-object/from16 v39, v14

    move-object/from16 v38, v17

    move-object/from16 v37, v20

    move-wide/from16 v13, v18

    const/16 v17, 0x0

    move-object/from16 v40, v15

    move-object/from16 v15, v17

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 p3, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v25

    move-object/from16 v25, p3

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/16 v4, 0x18

    int-to-float v4, v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move-object/from16 v5, v40

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v15, p3

    invoke-static {v15, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const v6, 0x7f13110f

    invoke-static {v6, v15}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v24

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v4, v7, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v25

    invoke-static {v15}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v16

    const/16 v27, 0x0

    const v28, 0xfdfc

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 p3, v15

    move-object/from16 v15, v17

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x30

    move-object/from16 v30, v4

    move-object/from16 v4, v24

    move-object/from16 v41, v5

    move-object/from16 v5, v25

    move-object/from16 v24, v30

    move-object/from16 v25, p3

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v4, 0x1

    move-object/from16 v5, p3

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v6, v41

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const-string/jumbo v8, "scroll_view"

    invoke-static {v7, v8}, Lcom/android/systemui/compose/modifiers/SysuiTestTagKt;->sysuiResTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v5}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v8

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static {v7, v8, v10, v9}, Landroidx/compose/foundation/ScrollKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/16 v8, 0x10

    int-to-float v8, v8

    const/16 v9, 0x8

    int-to-float v9, v9

    move/from16 v11, v34

    invoke-static {v7, v9, v8, v9, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    invoke-static {v8, v9, v5, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    iget v9, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v5, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v33, :cond_d

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_6

    move-object/from16 v12, v35

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    :goto_3
    move-object/from16 v12, v31

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    goto :goto_3

    :goto_4
    invoke-static {v5, v8, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v8, v36

    invoke-static {v5, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v8, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_7

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move-object/from16 v8, v32

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v8, v39

    goto :goto_7

    :goto_6
    invoke-static {v9, v5, v9, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_5

    :goto_7
    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    const v8, 0x31c12337

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v7, :cond_9

    and-int/lit16 v8, v3, 0x380

    or-int/lit8 v8, v8, 0x40

    const v9, 0x7f130df0

    invoke-static {v9, v0, v2, v5, v8}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->ConversationList(ILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :cond_9
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v8, -0x1dad524f

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v4

    if-eqz v8, :cond_b

    const v8, 0x31c12402

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v7, :cond_a

    const/16 v7, 0x23

    int-to-float v7, v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    :cond_a
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit16 v6, v3, 0x380

    or-int/lit8 v6, v6, 0x40

    const v7, 0x7f130f73

    invoke-static {v7, v1, v2, v5, v6}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->ConversationList(ILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :cond_b
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v5, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreenWithConversations$2;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreenWithConversations$2;-><init>(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v29

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v29

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v29
.end method
