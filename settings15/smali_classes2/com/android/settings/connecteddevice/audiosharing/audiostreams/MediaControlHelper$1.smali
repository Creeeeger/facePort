.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# instance fields
.field public final synthetic val$controller:Landroid/media/session/MediaController;

.field public final synthetic val$currentLeDevice:Ljava/util/Optional;

.field public final synthetic val$localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;Ljava/util/Optional;Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$controller:Landroid/media/session/MediaController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$currentLeDevice:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method


# virtual methods
.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$controller:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$currentLeDevice:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    const-string v3, "MediaControlHelper"

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "shouldStopMedia() : skip already stopped: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    instance-of p1, v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz p1, :cond_1

    check-cast v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start() : Stopping media player for package: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$controller:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper$1;->val$controller:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    :cond_3
    :goto_1
    return-void
.end method
