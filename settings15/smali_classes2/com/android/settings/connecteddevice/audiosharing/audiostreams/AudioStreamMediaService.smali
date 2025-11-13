.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBluetoothCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;

.field public final mBroadcastAssistantCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;

.field public mBroadcastId:I

.field public mDevices:Ljava/util/ArrayList;

.field public mIsMuted:Z

.field public mLatestPositiveVolume:I

.field mLocalSession:Landroid/media/session/MediaSession;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final mPlayStatePausingBuilder:Landroid/media/session/PlaybackState$Builder;

.field public final mPlayStatePlayingBuilder:Landroid/media/session/PlaybackState$Builder;

.field public final mVolumeControlCallback:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v1, 0x102

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1e

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    const-string v1, "leave_broadcast_action"

    const-string v5, "Leave Broadcast"

    const v6, 0x7f0803b7

    invoke-virtual {v0, v1, v5, v6}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mPlayStatePlayingBuilder:Landroid/media/session/PlaybackState$Builder;

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v7, 0x104

    invoke-virtual {v0, v7, v8}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mPlayStatePausingBuilder:Landroid/media/session/PlaybackState$Builder;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLatestPositiveVolume:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mIsMuted:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mIsMuted:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mPlayStatePausingBuilder:Landroid/media/session/PlaybackState$Builder;

    :goto_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mPlayStatePlayingBuilder:Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string p2, "onStartCommand()"

    const-string p3, "AudioStreamMediaService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "audio_stream_media_service_broadcast_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mBroadcastId:I

    const/4 v1, 0x2

    if-ne v0, p2, :cond_1

    const-string p1, "Invalid broadcast ID. Service will not start."

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v1

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "audio_stream_media_service_devices"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_6

    const-string p2, "audio_stream_media_service_broadcast_title"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/media/session/MediaSession;

    invoke-direct {p2, p0, p3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    new-instance p3, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p3}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    const-string p3, "android.media.metadata.DURATION"

    const-wide/16 v2, 0x64

    invoke-virtual {p1, p3, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setActive(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    new-instance p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;

    invoke-direct {p3, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V

    invoke-virtual {p1, p3}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    :cond_4
    new-instance p1, Landroid/app/Notification$MediaStyle;

    invoke-direct {p1}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mLocalSession:Landroid/media/session/MediaSession;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p3

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1, p3}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object p1

    new-instance p3, Landroid/app/Notification$Builder;

    const-string v0, "bluetooth_notification_channel"

    invoke-direct {p3, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f08039e

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p3, 0x7f1404cb

    invoke-virtual {p0, p3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSilent(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_6
    return v1

    :cond_7
    :goto_2
    const-string p1, "No device. Service will not start."

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v1
.end method
