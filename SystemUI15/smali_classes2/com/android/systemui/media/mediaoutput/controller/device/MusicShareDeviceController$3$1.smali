.class public final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isShowMusicShareEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->cancelDiscovery()V

    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->access$updateDevices(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0
.end method
