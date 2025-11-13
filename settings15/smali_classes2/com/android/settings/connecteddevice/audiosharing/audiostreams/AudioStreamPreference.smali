.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

.field public mIsConnected:Z

.field public mIsEncrypted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsConnected:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsEncrypted:Z

    const p1, 0x7f08039e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public final getAudioStreamBroadcastId()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public final getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mState:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    :goto_0
    return-object p0
.end method

.method public final getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d0541

    return p0
.end method

.method public final getSourceOriginForLogging()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mSourceOriginForLogging:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    :goto_0
    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x7f0a10a0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setAudioStreamMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final shouldHideSecondTarget()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsConnected:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mIsEncrypted:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
