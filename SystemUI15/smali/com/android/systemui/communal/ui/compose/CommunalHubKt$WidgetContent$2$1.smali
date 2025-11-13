.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;
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
.field final synthetic $accessibilityLabel:Ljava/lang/String;

.field final synthetic $clickActionLabel:Ljava/lang/String;

.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $index:I

.field final synthetic $placeWidgetActionLabel:Ljava/lang/String;

.field final synthetic $removeWidgetActionLabel:Ljava/lang/String;

.field final synthetic $selectedIndex:Ljava/lang/Integer;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$accessibilityLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$clickActionLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$removeWidgetActionLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$selectedIndex:Ljava/lang/Integer;

    iput p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$index:I

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$placeWidgetActionLabel:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$accessibilityLabel:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$clickActionLabel:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$removeWidgetActionLabel:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$index:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;-><init>(Lcom/android/systemui/communal/ui/compose/ContentListState;I)V

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$clickActionLabel:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;

    iget v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$index:I

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$selectWidgetAction$1;-><init>(ILcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/ui/compose/ContentListState;)V

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    filled-new-array {v0, v1}, [Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$selectedIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$index:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v1, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$placeWidgetActionLabel:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$1;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$selectedIndex:Ljava/lang/Integer;

    iget v6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$index:I

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v3, v4, v5, v6, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$1;-><init>(Lcom/android/systemui/communal/ui/compose/ContentListState;Ljava/lang/Integer;ILcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
