.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$context:Landroid/content/Context;

    const v1, 0x7f130066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$context:Landroid/content/Context;

    const v2, 0x7f130040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1$1;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v2, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$context:Landroid/content/Context;

    const v3, 0x7f130041

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1$2;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v3, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    filled-new-array {v0, v1}, [Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
