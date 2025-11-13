.class public final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isShowMusicShareEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->cancelDiscovery()V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
