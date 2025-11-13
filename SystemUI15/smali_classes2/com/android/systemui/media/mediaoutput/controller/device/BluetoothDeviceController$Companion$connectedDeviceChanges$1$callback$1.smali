.class public final Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAclConnectionStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActiveDeviceChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAudioModeChanged()V
    .locals 2

    const-string v0, "BluetoothDeviceController"

    const-string v1, "onAudioModeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAutoOnStateChanged(I)V
    .locals 2

    const-string v0, "onAutoOnStateChanged() - "

    const-string v1, "BluetoothDeviceController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 2

    const-string v0, "onBluetoothStateChanged() - "

    const-string v1, "BluetoothDeviceController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDeviceAdded() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDeviceBondStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDeviceDeleted() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProfileConnectionStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BluetoothDeviceController"

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 2

    const-string v0, "onScanningStateChanged() - "

    const-string v1, "BluetoothDeviceController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    return-void
.end method
