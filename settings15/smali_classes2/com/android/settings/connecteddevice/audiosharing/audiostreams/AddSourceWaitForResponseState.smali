.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final ADD_SOURCE_WAIT_FOR_RESPONSE_TIMEOUT_MILLIS:I = 0x4e20

.field static final AUDIO_STREAM_ADD_SOURCE_WAIT_FOR_RESPONSE_STATE_SUMMARY:I = 0x7f1404b8

.field public static sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;


# virtual methods
.method public final getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 0

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_WAIT_FOR_RESPONSE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object p0
.end method

.method public final getSummary()I
    .locals 0

    sget p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;->AUDIO_STREAM_ADD_SOURCE_WAIT_FOR_RESPONSE_STATE_SUMMARY:I

    return p0
.end method

.method public final performAction(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v2, :cond_1

    const-string p3, "AudioStreamsHelper"

    const-string v2, "addSource(): LeBroadcastAssistant is null!"

    invoke-static {p3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda7;

    invoke-direct {v2, p3, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getSourceOriginForLogging()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x799

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v4, p3, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cacheMetadata(): broadcastId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " saved in local cache."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioStreamsRepository"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->mBroadcastIdToMetadataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_2
    return-void
.end method
