.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;
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
.field final synthetic $interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field final synthetic $model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;->$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object v0
.end method
