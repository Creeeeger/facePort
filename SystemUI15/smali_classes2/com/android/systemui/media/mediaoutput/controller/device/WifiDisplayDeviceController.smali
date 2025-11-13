.class public final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field public isSupportDisplayDeviceVolumeControl:Z

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/hardware/display/DisplayManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/volume/util/DisplayManagerWrapper;Landroidx/datastore/core/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/AudioManager;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Lcom/android/systemui/volume/util/DisplayManagerWrapper;",
            "Landroidx/datastore/core/DataStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->dataStore:Landroidx/datastore/core/DataStore;

    const-string p1, "WifiDisplayDeviceController"

    const-string p2, "init()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$3;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$3;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$updateDevices(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;

    iget v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$2;

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$3;

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->onEach(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;)V

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$6;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$6;

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->onEach(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$1;->label:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object v1
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->isSupportDisplayDeviceVolumeControl:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolume()I

    move-result p1

    if-ge p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2, v2}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string v0, "cancel() - "

    const-string v1, "WifiDisplayDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string p0, "WifiDisplayDeviceController"

    const-string v0, "close()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string/jumbo v0, "transfer() - "

    const-string v1, "WifiDisplayDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-static {p1, v1}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->setDeviceForced(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setDualPlayMode(Z)Z

    :cond_3
    :goto_2
    return-void
.end method
