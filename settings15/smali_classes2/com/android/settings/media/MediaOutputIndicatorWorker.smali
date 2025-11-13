.class public Lcom/android/settings/media/MediaOutputIndicatorWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final mMediaDevices:Ljava/util/Collection;

.field public mPackageName:Ljava/lang/String;

.field public final mReceiver:Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputIndWorker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mMediaDevices:Ljava/util/Collection;

    new-instance p2, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;-><init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V

    iput-object p2, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mReceiver:Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method public final getActiveLocalMediaController()Landroid/media/session/MediaController;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    invoke-static {p0}, Lcom/android/settings/media/MediaOutputUtils;->getActiveLocalMediaController(Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method public final onAudioModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mMediaDevices:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mMediaDevices:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onSlicePinned()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mMediaDevices:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "MediaOutputIndWorker"

    const-string v0, "Bluetooth is not supported on this device"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mReceiver:Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    new-instance v0, Lcom/android/settings/media/MediaOutputIndicatorWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onSliceUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->stopScanOnRouter()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    const-string p0, "MediaOutputIndWorker"

    const-string v0, "Bluetooth is not supported on this device"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mReceiver:Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
