.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
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

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$selectedKey:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$1;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$2;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$3;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3, v4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v4, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$dragDropState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v10, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v11, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$selectedKey:Landroidx/compose/runtime/State;

    iget-object v12, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Lcom/android/systemui/communal/widgets/WidgetConfigurator;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x5e4131f9

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    invoke-direct {v4, v1, v2, v3, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->hasCustomSpans:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
