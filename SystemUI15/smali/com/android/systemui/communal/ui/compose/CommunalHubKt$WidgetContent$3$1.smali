.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;
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
.field final synthetic $model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

.field final synthetic $size:Landroid/util/SizeF;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;->$size:Landroid/util/SizeF;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    iget-object v1, v0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object v2, v0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    invoke-virtual {v1, p1, v0, v2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;->$size:Landroid/util/SizeF;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-int v5, v0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->getWidgetAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p1
.end method
