.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final AUDIO_STREAM_SOURCE_ADDED_STATE_SUMMARY:I = 0x7f1404cb

.field public static sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;


# virtual methods
.method public final getOnClickListener(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    new-instance p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V

    return-object p0
.end method

.method public final getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 0

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SOURCE_ADDED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object p0
.end method

.method public final getSummary()I
    .locals 0

    sget p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceAddedState;->AUDIO_STREAM_SOURCE_ADDED_STATE_SUMMARY:I

    return p0
.end method

.method public final performAction(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mAudioStreamsRepository:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    iget-object v1, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->mBroadcastIdToMetadataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez v0, :cond_0

    const-string v0, "AudioStreamsRepository"

    const-string v1, "getCachedMetadata(): broadcastId not found in mBroadcastIdToMetadataCacheMap."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p2, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->startMediaService(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getSourceOriginForLogging()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p3, 0x79a

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method
