.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 3

    const-string v0, "onBroadcastStarted(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "AudioSharingCompatibilityPrefController"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->-$$Nest$mupdateEnabled(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 3

    const-string v0, "onBroadcastStopped(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "AudioSharingCompatibilityPrefController"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->-$$Nest$mupdateEnabled(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 0

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStarted(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    return-void
.end method
