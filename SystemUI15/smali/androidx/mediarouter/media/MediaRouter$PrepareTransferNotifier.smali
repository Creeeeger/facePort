.class public final Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCanceled:Z

.field public mFinished:Z

.field public final mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final mMemberRoutes:Ljava/util/List;

.field public final mReason:I

.field public final mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mRouter:Ljava/lang/ref/WeakReference;

.field public final mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroidx/mediarouter/media/MediaRouteProvider$RouteController;",
            "I",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    iput p4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    new-instance p2, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;)V

    const-wide/16 p3, 0x3a98

    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final finishTransfer()V
    .locals 7

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-ne v3, p0, :cond_a

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_6

    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v5, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v6, 0x107

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iput v3, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    :cond_3
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v6, v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    goto :goto_0

    :cond_4
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_5
    iput-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v5, :cond_8

    new-instance v5, Landroidx/core/util/Pair;

    invoke-direct {v5, v4, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x106

    invoke-virtual {v1, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    new-instance v4, Landroidx/core/util/Pair;

    invoke-direct {v4, v5, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x108

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    if-eqz p0, :cond_9

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDynamicDescriptors(Ljava/util/Collection;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    iput-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    :cond_c
    :goto_5
    return-void
.end method
