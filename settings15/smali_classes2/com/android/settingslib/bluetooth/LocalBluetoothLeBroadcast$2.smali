.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    const-string v0, "onBroadcastMetadataChanged(), broadcastId = "

    const-string v1, "LocalBluetoothLeBroadcast"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    iget v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    if-ne v0, v1, :cond_0

    iput-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->updateBroadcastInfoFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$mnotifyBroadcastStateChange(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;I)V

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 1

    const-string p0, "onBroadcastStartFailed(), reason = "

    const-string v0, "LocalBluetoothLeBroadcast"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 3

    const-string v0, "onBroadcastStarted(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "LocalBluetoothLeBroadcast"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setLatestBroadcastId(I)V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setAppSourceName(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 1

    const-string p0, "onBroadcastStopFailed(), reason = "

    const-string v0, "LocalBluetoothLeBroadcast"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 3

    const-string v0, "onBroadcastStopped(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "LocalBluetoothLeBroadcast"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$mnotifyBroadcastStateChange(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;I)V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "resetCacheInfo:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setAppSourceName(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 2

    const-string p0, "onBroadcastUpdateFailed(), reason = "

    const-string v0, ", broadcastId = "

    const-string v1, "LocalBluetoothLeBroadcast"

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 3

    const-string v0, "onBroadcastUpdated(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "LocalBluetoothLeBroadcast"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setLatestBroadcastId(I)V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setAppSourceName(Ljava/lang/String;Z)V

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
