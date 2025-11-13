.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;
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
.field final synthetic $checkInAppCastingPopup$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

.field final synthetic $isInAppCastingMode:Z

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;ZLcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;",
            "Z",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$isInAppCastingMode:Z

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$checkInAppCastingPopup$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$isInAppCastingMode:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$checkInAppCastingPopup$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    invoke-interface {v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;->isBroadcasting()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v1, v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v0, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;->transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
