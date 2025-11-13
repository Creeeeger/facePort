.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;
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
.field final synthetic $model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1$1;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1$1;-><init>(Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
