.class final Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;

.field final synthetic $receiver:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;

.field final synthetic $this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$receiver:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "BluetoothDeviceController"

    const-string/jumbo v1, "unregisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$callback$1;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$this_connectedDeviceChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$2;->$receiver:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion$connectedDeviceChanges$1$receiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
