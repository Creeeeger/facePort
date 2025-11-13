.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
    .locals 21

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

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-eqz v5, :cond_0

    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_12

    :cond_0
    check-cast v5, Landroid/os/Bundle;

    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v2, :cond_12

    const-string v1, "groupRoute"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    move-object v13, v2

    goto :goto_0

    :cond_1
    move-object v13, v7

    :goto_0
    const-string v1, "dynamicRoutes"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_2

    move-object v2, v7

    goto :goto_3

    :cond_2
    const-string v3, "mrDescriptor"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v5, Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v5, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v16, v5

    goto :goto_2

    :cond_3
    move-object/from16 v16, v7

    :goto_2
    const-string/jumbo v3, "selectionState"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string v3, "isUnselectable"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    const-string v3, "isGroupable"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    const-string v3, "isTransferable"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    new-instance v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    :goto_3
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v2, v0, :cond_15

    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": DynamicRouteDescriptors changed, descriptors="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    invoke-interface {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    move-result v2

    if-ne v2, v4, :cond_6

    move-object v7, v1

    :cond_7
    instance-of v0, v7, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    if-eqz v0, :cond_15

    move-object v11, v7

    check-cast v11, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v13, :cond_9

    iget-object v1, v11, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v11, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_8

    iget-object v12, v11, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    new-instance v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;

    const/4 v15, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;-><init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_8
    iput-object v13, v11, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingGroupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v11, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingRoutes:Ljava/util/Collection;

    :goto_4
    monitor-exit v1

    goto/16 :goto_9

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "groupRoute must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_b

    check-cast v5, Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    if-eqz v5, :cond_a

    const-string v4, "routeId"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_a
    const-string v0, "DynamicGroupRouteController is created without valid route id."

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    const-string v0, "MediaRouteProviderProxy"

    const-string v2, "No further information on the dynamic group controller"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_2
    if-eqz v5, :cond_c

    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_12

    :cond_c
    check-cast v5, Landroid/os/Bundle;

    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v2, :cond_12

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    goto/16 :goto_9

    :pswitch_3
    if-eqz v5, :cond_d

    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_12

    :cond_d
    if-nez v6, :cond_e

    goto :goto_6

    :cond_e
    const-string v2, "error"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_6
    check-cast v5, Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    if-eqz v2, :cond_12

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {v5, v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_4
    if-eqz v5, :cond_f

    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_12

    :cond_f
    check-cast v5, Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    if-eqz v2, :cond_12

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2, v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_9

    :pswitch_5
    if-eqz v5, :cond_10

    instance-of v2, v5, Landroid/os/Bundle;

    if-eqz v2, :cond_12

    :cond_10
    check-cast v5, Landroid/os/Bundle;

    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-nez v2, :cond_12

    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne v3, v2, :cond_12

    if-lt v4, v8, :cond_12

    iput v9, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iput v4, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v2, v0, :cond_15

    iput-boolean v8, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    iget-object v0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7
    if-ge v9, v0, :cond_11

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    iget-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v2, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_11
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

    goto :goto_9

    :cond_12
    :goto_8
    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled message from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_6
    iget v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne v3, v1, :cond_14

    iput v9, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v2, v0, :cond_14

    sget-boolean v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Service connection error - Registration failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MediaRouteProviderProxy"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    :cond_14
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    if-eqz v1, :cond_15

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {v7, v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_15
    :goto_9
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
