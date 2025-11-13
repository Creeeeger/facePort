.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
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
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$selectedKey:Landroidx/compose/runtime/State;

    iput-wide p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$contentOffset:J

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput-object p9, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p10, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$communalContent$delegate:Landroidx/compose/runtime/State;

    iput-object p11, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$removeButtonEnabled$delegate:Landroidx/compose/runtime/State;

    iput-object p13, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v4, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$selectedKey:Landroidx/compose/runtime/State;

    iget-wide v5, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$contentOffset:J

    iget-object v7, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v8, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v11, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget-object v12, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v1, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$communalContent$delegate:Landroidx/compose/runtime/State;

    iget-object v9, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$gridCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$removeButtonEnabled$delegate:Landroidx/compose/runtime/State;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3;->$removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v15, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 p1, v12

    const/4 v12, 0x0

    invoke-static {v15, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    invoke-static {v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v12

    move-object/from16 p2, v11

    move-object v11, v13

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 p3, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v7

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    move-wide/from16 v17, v5

    iget-object v5, v11, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_5

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_0

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_1

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {v12, v11, v12, v5}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const v6, 0x56b21218

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v7, :cond_3

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3$1$1$1;

    invoke-direct {v6, v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v12, v6

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const v6, 0x56b2126c

    const/4 v8, 0x0

    invoke-static {v11, v8, v6}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3$1$2$1;

    invoke-direct {v6, v10, v9, v0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1$3$1$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v14, 0x37000246

    const/16 v15, 0x40

    move-object v0, v5

    move-wide/from16 v5, v17

    move-object/from16 v7, v16

    move-object/from16 v8, p3

    move-object v9, v12

    move-object v12, v11

    move-object/from16 v11, p2

    move-object/from16 v19, v12

    move-object/from16 v12, p1

    invoke-static/range {v0 .. v15}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$CommunalHubLazyGrid-pnlYLlI(Landroidx/compose/foundation/layout/BoxScope;Ljava/util/List;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x1

    move-object/from16 v13, v19

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method
