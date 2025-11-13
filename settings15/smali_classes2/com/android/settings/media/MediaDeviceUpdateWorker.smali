.class public Lcom/android/settings/media/MediaDeviceUpdateWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field mManager:Landroid/media/MediaRouter2Manager;

.field public final mMediaDevices:Ljava/util/Collection;

.field public final mPackageName:Ljava/lang/String;

.field public final mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaDeviceUpdateWorker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    const-string p1, "media_package_name"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V

    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onRequestFailed(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onSlicePinned()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mManager:Landroid/media/MediaRouter2Manager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mManager:Landroid/media/MediaRouter2Manager;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->startScanOnRouter()V

    return-void
.end method

.method public final onSliceUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->stopScanOnRouter()V

    return-void
.end method
