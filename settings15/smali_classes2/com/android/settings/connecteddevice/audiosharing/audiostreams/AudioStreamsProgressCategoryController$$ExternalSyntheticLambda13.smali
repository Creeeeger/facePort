.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object p0, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getRssi()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
