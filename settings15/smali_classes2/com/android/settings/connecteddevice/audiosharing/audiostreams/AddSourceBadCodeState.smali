.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final AUDIO_STREAM_ADD_SOURCE_BAD_CODE_STATE_SUMMARY:I = 0x7f1404b4

.field public static sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;


# virtual methods
.method public final getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 0

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_BAD_CODE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object p0
.end method

.method public final getSummary()I
    .locals 0

    sget p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceBadCodeState;->AUDIO_STREAM_ADD_SOURCE_BAD_CODE_STATE_SUMMARY:I

    return p0
.end method

.method public final performAction(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getSourceOriginForLogging()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p3, 0x7a1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method
