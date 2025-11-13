.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

.field public final synthetic f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preferenceClicked(): attempt to join broadcast id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncedState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->mAudioStream:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference$AudioStream;->mMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceAddRequest(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
