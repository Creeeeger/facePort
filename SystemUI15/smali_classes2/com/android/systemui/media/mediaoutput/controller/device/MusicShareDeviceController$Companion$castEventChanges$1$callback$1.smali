.class public final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


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

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCastDeviceAdded()V
    .locals 2

    const-string v0, "MusicShareDeviceController"

    const-string v1, "onCastDeviceAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1;->access$invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method public final onCastDeviceRemoved()V
    .locals 2

    const-string v0, "MusicShareDeviceController"

    const-string v1, "onCastDeviceRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1;->access$invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method public final onCastDiscoveryStateChanged(Z)V
    .locals 2

    const-string v0, "onCastDiscoveryStateChanged() - "

    const-string v1, "MusicShareDeviceController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1;->access$invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method public final onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 1

    const-string p1, "MusicShareDeviceController"

    const-string v0, "onCastProfileStateChanged()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1;->access$invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method
