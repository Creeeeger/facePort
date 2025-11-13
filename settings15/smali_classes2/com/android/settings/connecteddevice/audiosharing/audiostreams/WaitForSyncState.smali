.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final AUDIO_STREAM_WAIT_FOR_SYNC_STATE_SUMMARY:I = 0x7f1404b8

.field static final WAIT_FOR_SYNC_TIMEOUT_MILLIS:I = 0x3a98

.field public static sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;


# virtual methods
.method public final getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 0

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->WAIT_FOR_SYNC:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object p0
.end method

.method public final getSummary()I
    .locals 0

    sget p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;->AUDIO_STREAM_WAIT_FOR_SYNC_STATE_SUMMARY:I

    return p0
.end method

.method public final performAction(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;)V
    .locals 2

    iget-object p3, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    const-wide/16 p0, 0x3a98

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
