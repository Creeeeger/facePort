.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBroadcastMetadataChanged() broadcastId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " metadata: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioSharingNamePreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->-$$Nest$mupdateQrCodeIcon(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Z)V

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 0

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 3

    const-string v0, "onBroadcastStopped() reason : "

    const-string v1, " broadcastId: "

    const-string v2, "AudioSharingNamePreferenceController"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->-$$Nest$mupdateQrCodeIcon(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Z)V

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 0

    const-string p0, "onBroadcastUpdateFailed() reason : "

    const-string p2, "AudioSharingNamePreferenceController"

    invoke-static {p1, p0, p2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 0

    const-string p0, "onBroadcastUpdated() reason : "

    const-string p2, "AudioSharingNamePreferenceController"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

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
