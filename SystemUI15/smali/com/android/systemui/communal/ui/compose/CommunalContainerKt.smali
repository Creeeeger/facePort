.class public abstract Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ANIMATION_OFFSCREEN_OFFSET:F

.field public static final sceneTransitions:Lcom/android/compose/animation/scene/SceneTransitions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1;

    invoke-static {v0}, Lcom/android/compose/animation/scene/TransitionDslKt;->transitions(Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->sceneTransitions:Lcom/android/compose/animation/scene/SceneTransitions;

    const/16 v0, 0x80

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->ANIMATION_OFFSCREEN_OFFSET:F

    return-void
.end method

.method public static final AnimatedLinearGradient(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x6e4b5a05

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v1, 0xe

    const/4 v4, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int/2addr v2, v1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v1

    :goto_1
    and-int/lit8 v2, v11, 0xb

    if-ne v2, v4, :cond_3

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/compose/theme/AndroidColorScheme;

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/BoxScope;->matchParentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-wide v5, v12, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    sget-object v7, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v5, v6, v7}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    iget-wide v5, v12, Lcom/android/compose/theme/AndroidColorScheme;->primaryContainer:J

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v14

    const v2, -0x2e84bad6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/unit/Density;

    const-string v2, "radial gradient transition"

    const/4 v8, 0x0

    invoke-static {v2, v10, v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v2

    new-instance v5, Landroidx/compose/animation/core/CubicBezierEasing;

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v7, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v5, v3, v4, v6, v7}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/16 v3, 0x2710

    const/4 v4, 0x2

    invoke-static {v3, v8, v5, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    sget-object v4, Landroidx/compose/animation/core/RepeatMode;->Reverse:Landroidx/compose/animation/core/RepeatMode;

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    invoke-static {v7, v3, v4, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v5

    const/16 v16, 0x71b8

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v6, "radial gradient center fraction"

    move-object v7, v10

    move/from16 v8, v16

    move-object v1, v9

    move/from16 v9, v17

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v2

    const v3, -0x1dabe2aa

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_5

    :cond_4
    sget v3, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->ANIMATION_OFFSCREEN_OFFSET:F

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, -0x1dabe249

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v10, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    or-int/2addr v4, v6

    iget-wide v6, v12, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    invoke-virtual {v10, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v4, :cond_7

    :cond_6
    new-instance v8, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;

    move-wide v4, v14

    move-object v14, v8

    move v15, v1

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-object/from16 v20, v2

    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;-><init>(FJJLandroidx/compose/runtime/State;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v13, v8}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v10, v3}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    and-int/lit8 v1, v11, 0xe

    invoke-static {v0, v10, v1}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->BackgroundTopScrim(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$AnimatedLinearGradient$1;

    move/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$AnimatedLinearGradient$1;-><init>(Landroidx/compose/foundation/layout/BoxScope;I)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final BackgroundTopScrim(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7493a7ec

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v0, v0, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    goto :goto_3

    :cond_4
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    :goto_3
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {p0, v2}, Landroidx/compose/foundation/layout/BoxScope;->matchParentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x3eae147b    # 0.34f

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v0, v1, v3}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :goto_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$BackgroundTopScrim$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$BackgroundTopScrim$1;-><init>(Landroidx/compose/foundation/layout/BoxScope;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final CommunalContainer(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v2, p1

    move-object/from16 v0, p5

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x21723531

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v1, 0x1

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v3

    goto :goto_0

    :cond_0
    move-object/from16 v12, p0

    :goto_0
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_1

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v3

    :cond_1
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v3, v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v6, v2, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->currentScene:Lkotlinx/coroutines/flow/Flow;

    const/16 v7, 0x38

    invoke-static {v6, v5, v0, v7}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->touchesAllowed:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v8, v6, v0, v7}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    iget-object v8, v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->showGestureIndicator:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v8, v6, v0, v7}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v8, Lcom/android/systemui/communal/shared/model/CommunalBackgroundType;->DEFAULT:Lcom/android/systemui/communal/shared/model/CommunalBackgroundType;

    iget-object v9, v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->communalBackground:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v9, v8, v0, v7}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    const v8, -0x78541406

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_2

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/android/compose/animation/scene/SceneKey;

    new-instance v5, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$state$1$1;

    invoke-direct {v5, v2}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$state$1$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;)V

    sget-object v16, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->sceneTransitions:Lcom/android/compose/animation/scene/SceneTransitions;

    sget-object v18, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    new-instance v8, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;

    const/16 v19, 0x0

    move-object v14, v8

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v19}, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutStateImpl;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitions;Lkotlin/jvm/functions/Function1;Ljava/util/List;Z)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v5, v8

    check-cast v5, Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    const/4 v14, 0x0

    const v8, -0x785412e9

    invoke-static {v0, v14, v8}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-ne v8, v4, :cond_3

    new-instance v8, Lcom/android/compose/animation/scene/CommunalSwipeDetector;

    invoke-direct {v8, v9, v1, v9}, Lcom/android/compose/animation/scene/CommunalSwipeDetector;-><init>(Lcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Lcom/android/compose/animation/scene/CommunalSwipeDetector;

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;

    move-object/from16 v15, p2

    invoke-direct {v1, v5, v3, v15}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;-><init>(Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;)V

    invoke-static {v5, v1, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;

    invoke-direct {v1, v2, v5}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;)V

    invoke-static {v2, v5, v1, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    const v1, -0x78541052

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {}, Lcom/android/systemui/Flags;->glanceableHubFullscreenSwipe()V

    new-instance v1, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;

    const v3, 0x7f07020a

    invoke-static {v3, v0}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/Composer;)F

    move-result v3

    invoke-direct {v1, v3, v9}, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {}, Lcom/android/systemui/Flags;->glanceableHubFullscreenSwipe()V

    sget-object v8, Lcom/android/compose/animation/scene/SwipeDetectorKt;->DefaultSwipeDetector:Lcom/android/compose/animation/scene/PassthroughSwipeDetector;

    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v12, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v9, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;

    move-object/from16 v10, p3

    move-object/from16 v3, p4

    invoke-direct {v9, v6, v10, v3, v7}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;-><init>(Landroidx/compose/runtime/State;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/State;)V

    const/16 v16, 0x10

    const/4 v7, 0x0

    const/16 v17, 0x206

    move-object v3, v5

    move-object v5, v1

    move-object v6, v8

    move-object v8, v9

    move-object v9, v0

    move/from16 v10, v17

    move-object v1, v11

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt;->SceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeSourceDetector;Lcom/android/compose/animation/scene/SwipeDetector;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/communal/ui/compose/extensions/ModifierExtKt;->allowGestures(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v0, v14}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v9, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;

    move-object v0, v9

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final DefaultBackground(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/communal/util/CommunalColors;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x7dcfc1d2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v0, v0, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/communal/util/CommunalColorsImpl;

    iget-object v0, v0, Lcom/android/systemui/communal/util/CommunalColorsImpl;->backgroundColor:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0, p2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {p0, v1}, Landroidx/compose/foundation/layout/BoxScope;->matchParentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$DefaultBackground$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$DefaultBackground$1;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/communal/util/CommunalColors;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final StaticLinearGradient(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x67f17890

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/theme/AndroidColorScheme;

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {p0, v2}, Landroidx/compose/foundation/layout/BoxScope;->matchParentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/Brush;->Companion:Landroidx/compose/ui/graphics/Brush$Companion;

    iget-wide v4, v1, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/compose/theme/AndroidColorScheme;->primaryContainer:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    filled-new-array {v4, v1}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/geometry/Offset;->Infinite:J

    sget-object v1, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/ui/graphics/LinearGradient;

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Landroidx/compose/ui/graphics/LinearGradient;-><init>(Ljava/util/List;Ljava/util/List;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v1}, Landroidx/compose/foundation/BackgroundKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/ShaderBrush;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    and-int/lit8 v0, v0, 0xe

    invoke-static {p0, p1, v0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->BackgroundTopScrim(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$StaticLinearGradient$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$StaticLinearGradient$1;-><init>(Landroidx/compose/foundation/layout/BoxScope;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final access$CommunalScene(Lcom/android/compose/animation/scene/SceneScope;Lcom/android/systemui/communal/shared/model/CommunalBackgroundType;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    const/4 v0, 0x3

    move-object/from16 v7, p5

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x66cfabe8

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->Scrim:Lcom/android/compose/animation/scene/ElementKey;

    move-object v9, p0

    invoke-interface {p0, v1, v2}, Lcom/android/compose/animation/scene/SceneScope;->element(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/ElementKey;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v4, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v7, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v10, v7, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_1

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {v4, v7, v4, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v2, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eq v2, v4, :cond_7

    const/4 v6, 0x2

    if-eq v2, v6, :cond_6

    if-eq v2, v0, :cond_5

    const/4 v0, 0x4

    if-eq v2, v0, :cond_4

    const v0, 0x25002ccc

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    move-object v10, p2

    goto :goto_3

    :cond_4
    const v0, 0x25002cae

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v7, v5}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->BackgroundTopScrim(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_5
    const v0, 0x25002c6a

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v7, v5}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->AnimatedLinearGradient(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_6
    const v0, 0x25002c24

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v7, v5}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->StaticLinearGradient(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_7
    const v2, 0x25002bcb

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v0, p6, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v5

    move-object v10, p2

    invoke-static {v1, p2, v7, v0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->DefaultBackground(Landroidx/compose/foundation/layout/BoxScope;Lcom/android/systemui/communal/util/CommunalColors;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v0, p6, 0xe

    or-int/lit16 v0, v0, 0x200

    shr-int/lit8 v1, p6, 0x9

    and-int/lit8 v1, v1, 0x70

    or-int v5, v0, v1

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-object v2, p0

    move-object v3, v8

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalContent;->Content(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_8

    new-instance v12, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalScene$3;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalScene$3;-><init>(Lcom/android/compose/animation/scene/SceneScope;Lcom/android/systemui/communal/shared/model/CommunalBackgroundType;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/ui/Modifier;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method
