.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_15

    iget v2, v1, Landroid/os/Message;->what:I

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v4, v1, Landroid/os/Message;->arg2:I

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_13

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v2, v0, :cond_15

    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    move-result v3

    if-ne v3, v4, :cond_0

    move-object v6, v2

    :cond_1
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    instance-of v2, v6, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v2, :cond_2

    move-object v2, v6

    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_2
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    goto/16 :goto_6

    :pswitch_1
    if-eqz v5, :cond_3

    instance-of v1, v5, Landroid/os/Bundle;

    if-eqz v1, :cond_15

    :cond_3
    check-cast v5, Landroid/os/Bundle;

    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v1, :cond_15

    const-string v1, "groupRoute"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    new-instance v2, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    move-object v2, v6

    :goto_0
    const-string v1, "dynamicRoutes"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_5
    const-string v9, "mrDescriptor"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    new-instance v10, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v10, v9}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    move-object v12, v10

    goto :goto_2

    :cond_6
    move-object v12, v6

    :goto_2
    const-string v9, "selectionState"

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v9, "isUnselectable"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v9, "isGroupable"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v9, "isTransferable"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    new-instance v5, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v5, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v5, v0, :cond_15

    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    invoke-interface {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    move-result v5

    if-ne v5, v4, :cond_8

    move-object v6, v1

    :cond_9
    instance-of v0, v6, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    if-eqz v0, :cond_15

    check-cast v6, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    invoke-virtual {v6, v2, v3}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    goto/16 :goto_6

    :pswitch_2
    instance-of v1, v5, Landroid/os/Bundle;

    if-eqz v1, :cond_b

    check-cast v5, Landroid/os/Bundle;

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-eqz v5, :cond_a

    const-string v2, "routeId"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_a
    const-string v0, "DynamicGroupRouteController is created without valid route id."

    invoke-virtual {v1, v0, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_b
    const-string v0, "MediaRouteProviderProxy"

    const-string v1, "No further information on the dynamic group controller"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_3
    if-eqz v5, :cond_c

    instance-of v1, v5, Landroid/os/Bundle;

    if-eqz v1, :cond_15

    :cond_c
    check-cast v5, Landroid/os/Bundle;

    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v2

    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v3, v0, :cond_15

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    goto/16 :goto_6

    :pswitch_4
    if-eqz v5, :cond_d

    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_15

    :cond_d
    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    check-cast v5, Landroid/os/Bundle;

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-eqz v1, :cond_15

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1, v6, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :pswitch_5
    if-eqz v5, :cond_f

    instance-of v1, v5, Landroid/os/Bundle;

    if-eqz v1, :cond_15

    :cond_f
    check-cast v5, Landroid/os/Bundle;

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-eqz v1, :cond_15

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1, v5}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_6

    :pswitch_6
    if-eqz v5, :cond_10

    instance-of v1, v5, Landroid/os/Bundle;

    if-eqz v1, :cond_15

    :cond_10
    check-cast v5, Landroid/os/Bundle;

    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-nez v1, :cond_15

    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne v3, v1, :cond_15

    if-lt v4, v8, :cond_15

    iput v7, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iput v4, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v2

    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v3, v0, :cond_11

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    :cond_11
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v2, v0, :cond_15

    iput-boolean v8, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v7, v0, :cond_12

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v2, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_12
    iget-object v0, v1, Landroidx/mediarouter/media/MediaRouteProvider;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_15

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    iget v4, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v4, 0x1

    iput v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    iget-object v6, v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v3, 0xa

    invoke-virtual/range {v2 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    goto :goto_6

    :cond_13
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne v3, v1, :cond_14

    iput v7, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v2, v0, :cond_14

    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    :cond_14
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-eqz v1, :cond_15

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1, v6, v6}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_15
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
