.class public final Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceive() - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :sswitch_2
    const-string p2, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :sswitch_3
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_3
        -0x5a3332e2 -> :sswitch_2
        -0x4e6e32e7 -> :sswitch_1
        0x727c71d1 -> :sswitch_0
    .end sparse-switch
.end method
