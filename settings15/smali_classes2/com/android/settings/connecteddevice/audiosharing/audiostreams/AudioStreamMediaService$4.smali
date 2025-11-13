.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;
.super Landroid/media/session/MediaSession$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "onCustomAction: "

    const-string v0, "AudioStreamMediaService"

    const-string v1, "leave_broadcast_action"

    invoke-static {p2, p1, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    sget p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    const-string v1, "AudioStreamMediaService"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPause() setting volume for device : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v2, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " volume: 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    :goto_0
    const-string p0, "active device or device has source is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPlay()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    const-string v1, "AudioStreamMediaService"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPlay() setting volume for device : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v2, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget v2, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLatestPositiveVolume:I

    invoke-static {v0, v2, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x7a0

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "active device or device has source is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSeekTo(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSeekTo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioStreamMediaService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget-object p2, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
