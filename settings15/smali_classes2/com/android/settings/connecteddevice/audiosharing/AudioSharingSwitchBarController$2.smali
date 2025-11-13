.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    const-string p0, "onBroadcastMetadataChanged(), broadcastId = "

    const-string v0, ", metadata = "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSharingSwitchBarCtl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 2

    const-string v0, "onBroadcastStartFailed(), reason = "

    const-string v1, "AudioSharingSwitchBarCtl"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$mupdateSwitch(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 3

    const-string v0, "onBroadcastStarted(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "AudioSharingSwitchBarCtl"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$mupdateSwitch(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$fgetmListener(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->onAudioSharingStateChanged()V

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 2

    const-string v0, "onBroadcastStopFailed(), reason = "

    const-string v1, "AudioSharingSwitchBarCtl"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$mupdateSwitch(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 3

    const-string v0, "onBroadcastStopped(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "AudioSharingSwitchBarCtl"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$mupdateSwitch(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$fgetmListener(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->onAudioSharingStateChanged()V

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
    .locals 3

    const-string v0, "onPlaybackStarted(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "AudioSharingSwitchBarCtl"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->-$$Nest$mhandleOnBroadcastReady(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    return-void
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    return-void
.end method
