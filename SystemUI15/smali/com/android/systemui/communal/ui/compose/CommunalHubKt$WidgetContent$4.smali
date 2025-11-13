.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;
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
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $index:I

.field final synthetic $model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $selected:Z

.field final synthetic $size:Landroid/util/SizeF;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field final synthetic $widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;ZLcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/ui/Modifier;ILcom/android/systemui/communal/ui/compose/ContentListState;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$size:Landroid/util/SizeF;

    iput-boolean p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$selected:Z

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$index:I

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput p9, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$$changed:I

    iput p10, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$size:Landroid/util/SizeF;

    iget-boolean v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$selected:Z

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$index:I

    iget-object v7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;->$$default:I

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->WidgetContent(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;ZLcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/ui/Modifier;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
