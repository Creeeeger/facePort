.class final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$1;
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
.field final synthetic $callback:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;

.field final synthetic $this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$1;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "MusicShareDeviceController"

    const-string/jumbo v1, "unregisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$1;->$this_castEventChanges:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$1;->$callback:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion$castEventChanges$1$callback$1;

    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
