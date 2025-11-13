.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $index:I

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(ILcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/ui/compose/ContentListState;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;->$index:I

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;->$index:I

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v1, v1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-static {v0, v1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$keyAtIndexIfEditable(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->setSelectedKey(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
