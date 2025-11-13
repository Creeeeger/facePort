.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothVolumeControl$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    return-void
.end method


# virtual methods
.method public final onDeviceVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    const-string v1, "AudioStreamMediaService"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceVolumeChanged() bluetoothDevice : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " volume: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mIsMuted:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mIsMuted:Z

    iput p2, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLatestPositiveVolume:I

    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object p2, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "active device or device has source is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
