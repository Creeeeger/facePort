.class public final Lcom/android/systemui/communal/widgets/WidgetInteractionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final delegate:Lcom/android/systemui/communal/util/InteractionHandlerDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetInteractionHandler;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;

    sget-object v0, Lcom/android/systemui/communal/widgets/WidgetInteractionHandler$delegate$1;->INSTANCE:Lcom/android/systemui/communal/widgets/WidgetInteractionHandler$delegate$1;

    new-instance v1, Lcom/android/systemui/communal/widgets/WidgetInteractionHandler$delegate$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/communal/widgets/WidgetInteractionHandler$delegate$2;-><init>(Lcom/android/systemui/communal/widgets/WidgetInteractionHandler;)V

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;)V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetInteractionHandler;->delegate:Lcom/android/systemui/communal/util/InteractionHandlerDelegate;

    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/WidgetInteractionHandler;->delegate:Lcom/android/systemui/communal/util/InteractionHandlerDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method
