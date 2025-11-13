.class final Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1;
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
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v2, v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
