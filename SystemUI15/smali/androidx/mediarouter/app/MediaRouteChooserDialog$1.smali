.class public final Landroidx/mediarouter/app/MediaRouteChooserDialog$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->updateViewForState(I)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->updateViewForState(I)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->mHandler:Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->handleUpdateRoutes(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method
