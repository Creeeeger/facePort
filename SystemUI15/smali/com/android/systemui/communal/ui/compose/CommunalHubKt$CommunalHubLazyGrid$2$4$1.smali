.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;
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
.field final synthetic $cardModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $index:I

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

.field final synthetic $selected$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $size:Landroid/util/SizeF;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field final synthetic $widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/util/SizeF;Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;>;I",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Landroid/util/SizeF;",
            "Landroidx/compose/ui/Modifier;",
            "Lcom/android/systemui/communal/widgets/WidgetConfigurator;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$index:I

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$size:Landroid/util/SizeF;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$cardModifier:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p9, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$selected$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move-object v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p3, p2, 0xe

    if-nez p3, :cond_1

    move-object p3, v9

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p2, p3

    :cond_1
    and-int/lit8 p2, p2, 0x5b

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    move-object p2, v9

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_3
    :goto_1
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$index:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    iget-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$selected$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    :goto_2
    move v3, p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$size:Landroid/util/SizeF;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$cardModifier:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$index:I

    iget-object v7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2$4$1;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    const v10, 0x9000240

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$CommunalContent(Lcom/android/systemui/communal/domain/model/CommunalContentModel;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/util/SizeF;ZLandroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/Composer;II)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
