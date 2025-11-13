.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-static {p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->isConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p0, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBigEncryptionState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p0, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceConnectBadCode(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSearchStartFailed(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSearchStartFailed(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    const-string v0, "Failed to start scanning. Try again."

    invoke-virtual {p1, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->showToast(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->setScanning(Z)V

    return-void
.end method

.method public final onSearchStarted(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSearchStarted(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    if-nez p0, :cond_0

    const-string p0, "AudioStreamsProgressCategoryCallback"

    const-string p1, "onSearchStarted() : mCategoryController is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->setScanning(Z)V

    return-void
.end method

.method public final onSearchStopFailed(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSearchStopFailed(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    const-string p1, "Failed to stop scanning. Try again."

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public final onSearchStopped(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSearchStopped(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    if-nez p0, :cond_0

    const-string p0, "AudioStreamsProgressCategoryCallback"

    const-string p1, "onSearchStopped() : mCategoryController is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->setScanning(Z)V

    return-void
.end method

.method public final onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceFailedToConnect(I)V

    return-void
.end method

.method public final onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    if-nez p0, :cond_0

    const-string p0, "AudioStreamsProgressCategoryCallback"

    const-string p1, "onSourceFound() : mCategoryController is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method public final onSourceLost(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceLost(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceLost(I)V

    return-void
.end method

.method public final onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    const-string p1, "Failed to remove source."

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryCallback;->mCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceRemoved()V

    return-void
.end method
