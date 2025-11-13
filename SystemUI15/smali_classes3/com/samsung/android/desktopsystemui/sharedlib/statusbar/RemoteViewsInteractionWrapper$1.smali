.class Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string v1, "ACTION_CLICK_DISPLAYID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set ACTION_CLICK_DISPLAYID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DSU]InteractionHandlerWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
