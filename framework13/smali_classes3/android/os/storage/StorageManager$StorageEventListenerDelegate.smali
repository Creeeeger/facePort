.class Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
.super Landroid/os/storage/IStorageEventListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEventListenerDelegate"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/os/storage/StorageEventListener;

.field final synthetic blacklist this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/os/storage/StorageEventListener;
    .param p4, "callback"    # Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 349
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IStorageEventListener$Stub;-><init>()V

    .line 350
    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 351
    iput-object p3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    .line 352
    iput-object p4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 353
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDiskDestroyed$6$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;)V
    .locals 1
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 417
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 418
    return-void
.end method

.method synthetic blacklist lambda$onDiskScanned$5$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;I)V
    .locals 1
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 410
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 411
    return-void
.end method

.method synthetic blacklist lambda$onStorageStateChanged$1$android-os-storage-StorageManager$StorageEventListenerDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 369
    .local v1, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    .line 372
    .end local v1    # "sv":Landroid/os/storage/StorageVolume;
    :cond_0
    goto :goto_0

    .line 374
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$onUsbMassStorageConnectionChanged$0$android-os-storage-StorageManager$StorageEventListenerDelegate(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 358
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 359
    return-void
.end method

.method synthetic blacklist lambda$onVolumeForgotten$4$android-os-storage-StorageManager$StorageEventListenerDelegate(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method synthetic blacklist lambda$onVolumeRecordChanged$3$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeRecord;)V
    .locals 1
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 396
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 397
    return-void
.end method

.method synthetic blacklist lambda$onVolumeStateChanged$2$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeInfo;II)V
    .locals 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 380
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 382
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v0

    .line 383
    .local v0, "path":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 384
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 385
    .local v2, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    .line 388
    .end local v2    # "sv":Landroid/os/storage/StorageVolume;
    :cond_0
    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method public greylist-max-o onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public greylist-max-o onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 409
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method public greylist-max-o onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method public greylist-max-o onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public greylist-max-o onVolumeForgotten(Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method

.method public greylist-max-o onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 395
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public greylist-max-o onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 379
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeInfo;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method
