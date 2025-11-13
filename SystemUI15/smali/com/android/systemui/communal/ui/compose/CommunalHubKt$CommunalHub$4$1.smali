.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $communalContent$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $contentOffset:J

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field final synthetic $isCommunalContentVisible$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $isEmptyState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $removeButtonEnabled$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $selectedKey:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field final synthetic $widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "J",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Lcom/android/systemui/communal/widgets/WidgetConfigurator;",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$isEmptyState$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$isCommunalContentVisible$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$selectedKey:Landroidx/compose/runtime/State;

    iput-wide p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentOffset:J

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p9, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p10, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput-object p11, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p12, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$communalContent$delegate:Landroidx/compose/runtime/State;

    iput-object p13, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p14, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$removeButtonEnabled$delegate:Landroidx/compose/runtime/State;

    iput-object p15, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-virtual {v2}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$isEmptyState$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x7f514caa

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/16 v3, 0x40

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$EmptyStateCta(Landroidx/compose/foundation/layout/PaddingValues;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_1

    :cond_2
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x7f514d54

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    sget-object v5, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/android/systemui/communal/ui/compose/Dimensions;->SlideOffsetY:F

    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$isCommunalContentVisible$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v6, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    new-instance v7, Landroidx/compose/animation/core/TweenSpec;

    const/16 v8, 0x53

    invoke-direct {v7, v8, v8, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v7, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v7

    sget-object v8, Lcom/android/compose/animation/Easings;->INSTANCE:Lcom/android/compose/animation/Easings;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/compose/animation/Easings;->Emphasized:Lcom/android/compose/animation/Easings$fromInterpolator$1;

    const/16 v9, 0x3e8

    invoke-static {v9, v4, v8, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v10

    const v11, 0x7f514fc7

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v11

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v11, :cond_3

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v11, :cond_4

    :cond_3
    new-instance v12, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$1$1;

    invoke-direct {v12, v2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$1$1;-><init>(I)V

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInVertically(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v7

    const/16 v10, 0xa7

    invoke-static {v10, v4, v6, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    invoke-static {v6, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v6

    invoke-static {v9, v4, v8, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    const v8, 0x7f515175

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v8, :cond_6

    :cond_5
    new-instance v9, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$2$1;

    invoke-direct {v9, v2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$2$1;-><init>(I)V

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v9, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutVertically(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v8

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v2, v6}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;

    iget-object v10, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v11, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v12, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$selectedKey:Landroidx/compose/runtime/State;

    iget-wide v13, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentOffset:J

    iget-object v15, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v9, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget-object v4, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    move-object/from16 p2, v8

    iget-object v8, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$communalContent$delegate:Landroidx/compose/runtime/State;

    move-object/from16 v23, v7

    iget-object v7, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v24, v6

    iget-object v6, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$removeButtonEnabled$delegate:Landroidx/compose/runtime/State;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;->$removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move-object/from16 v22, v0

    invoke-direct/range {v9 .. v22}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x483beb50

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const/4 v9, 0x0

    const v12, 0x30030

    const/16 v13, 0x10

    move-object/from16 v6, v24

    move-object/from16 v7, v23

    move-object/from16 v8, p2

    move-object v11, v1

    invoke-static/range {v5 .. v13}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
