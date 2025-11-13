.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field final synthetic $list:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;>;"
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
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Lcom/android/systemui/communal/widgets/WidgetConfigurator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;>;",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            ">;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Landroidx/compose/runtime/State;",
            "Lcom/android/systemui/communal/widgets/WidgetConfigurator;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$selectedKey:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/high16 v3, 0x43c80000    # 400.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    move-object/from16 v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p4

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    and-int/lit8 v11, v10, 0xe

    if-nez v11, :cond_1

    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    goto :goto_0

    :cond_0
    move v11, v6

    :goto_0
    or-int/2addr v11, v10

    goto :goto_1

    :cond_1
    move v11, v10

    :goto_1
    and-int/lit8 v10, v10, 0x70

    const/16 v12, 0x20

    if-nez v10, :cond_3

    move-object v10, v9

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v12

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v11, v10

    :cond_3
    move v15, v11

    and-int/lit16 v10, v15, 0x2db

    const/16 v11, 0x92

    if-ne v10, v11, :cond_5

    move-object v10, v9

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_5
    :goto_3
    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v13, Landroid/util/SizeF;

    sget-object v10, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardWidth:F

    iget-object v11, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-interface {v11}, Lcom/android/systemui/communal/domain/model/CommunalContentModel;->getSize()Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    move-result-object v11

    sget-object v14, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v14, v11

    const/4 v14, 0x3

    if-eq v11, v5, :cond_8

    if-eq v11, v6, :cond_7

    if-ne v11, v14, :cond_6

    sget v11, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardHeightThird:F

    goto :goto_4

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    sget v11, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardHeightHalf:F

    goto :goto_4

    :cond_8
    sget v11, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardHeightFull:F

    :goto_4
    invoke-direct {v13, v10, v11}, Landroid/util/SizeF;-><init>(FF)V

    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v11

    sget-object v16, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v14

    invoke-static {v10, v11, v14}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v14

    iget-object v11, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-virtual {v11}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v11

    const/4 v5, 0x0

    if-eqz v11, :cond_f

    iget-object v11, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v11, :cond_f

    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v9, -0x3316ca3e    # -1.222692E8f

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v9, -0x3316ca1a

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v9, v15, 0x70

    if-ne v9, v12, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    move v9, v5

    :goto_5
    iget-object v12, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$selectedKey:Landroidx/compose/runtime/State;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_a

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v9, :cond_b

    :cond_a
    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$selected$2$1;

    invoke-direct {v1, v12, v8, v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$selected$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILandroidx/compose/runtime/State;)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Landroidx/compose/runtime/State;

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v6, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object v6, v6, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_d

    :cond_c
    const/4 v6, 0x5

    goto :goto_6

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_c

    move-object v3, v10

    goto :goto_7

    :goto_6
    invoke-static {v4, v3, v2, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v9

    invoke-static {v4, v3, v2, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v12

    const/16 v17, 0x2

    and-int/lit8 v17, v6, 0x2

    if-eqz v17, :cond_e

    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    sget-object v6, Landroidx/compose/animation/core/VisibilityThresholdsKt;->rectVisibilityThreshold:Landroidx/compose/ui/geometry/Rect;

    const/4 v6, 0x1

    invoke-static {v6, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v9

    invoke-static {v4, v3, v9, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v9

    :cond_e
    const/4 v6, 0x5

    invoke-static {v4, v3, v2, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;

    invoke-direct {v3, v12, v9, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-interface {v10, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    :goto_7
    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v6, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v6, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    new-instance v12, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;

    iget-object v10, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v5, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    move-object/from16 p3, v3

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    move-object/from16 v16, v9

    move-object v9, v12

    move/from16 p4, v4

    move-object v4, v11

    move v11, v8

    move/from16 v19, v8

    move-object v8, v12

    move-object/from16 v12, v16

    const/16 v20, 0x3

    move/from16 v21, v15

    move-object v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/util/SizeF;Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;)V

    const v0, -0x47d9bb7c

    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const v0, 0x180040

    and-int/lit8 v1, v21, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v21, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v15, v0, v1

    const/16 v16, 0x0

    move/from16 v1, v19

    move-object v8, v2

    move v9, v1

    move v10, v6

    move/from16 v11, p4

    move-object/from16 v12, p3

    move-object v14, v4

    invoke-static/range {v7 .. v16}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt;->DraggableItem(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;Lcom/android/systemui/communal/ui/compose/GridDragDropState;IZZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_8

    :cond_f
    move v1, v8

    move/from16 v21, v15

    move-object v2, v9

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x3316c515

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v7, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;->animateItemPlacement$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    iget-object v10, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v4, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    shl-int/lit8 v5, v21, 0xf

    const/high16 v6, 0x380000

    and-int/2addr v5, v6

    const v6, 0x9000e40

    or-int v19, v5, v6

    const/4 v14, 0x0

    const/16 v20, 0x20

    const/4 v12, 0x0

    move-object v11, v13

    move-object v13, v3

    move v15, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v9 .. v20}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$CommunalContent(Lcom/android/systemui/communal/domain/model/CommunalContentModel;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/util/SizeF;ZLandroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
