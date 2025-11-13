.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBroadcastListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

.field public mFileListObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

.field public mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController$1;


# virtual methods
.method public final isFileListController()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCleared()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mFileListObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->removeObserver()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mBroadcastListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$1;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_REMOVED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->TIMEZONE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mTimeSetBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->LOCALE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mLocaleChangedBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->CACHED_FILES_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mCachedFilesChanged:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->NEED_REFRESH:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mNeedRefreshListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->onCleared()V

    return-void
.end method

.method public final refresh$1(Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController$1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xc8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
