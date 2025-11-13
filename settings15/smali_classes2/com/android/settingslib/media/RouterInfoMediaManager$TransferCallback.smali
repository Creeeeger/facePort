.class public final Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestFailed(I)V
    .locals 6

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v2, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/media/MediaDevice;

    iget v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {v1, p1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onRequestFailed(I)V

    goto :goto_1

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    iget-object p2, p1, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p2}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->addMediaDevice(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    iget-object p1, p1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p2

    :goto_2
    iput-object p2, p1, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput v0, p2, Lcom/android/settingslib/media/MediaDevice;->mState:I

    invoke-virtual {p1, p2}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 0

    return-void
.end method
