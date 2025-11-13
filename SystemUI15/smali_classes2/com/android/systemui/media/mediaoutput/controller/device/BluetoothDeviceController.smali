.class public final Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final cr:Landroid/content/ContentResolver;

.field public final isDualAudioSupported:Z

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public musicShareEventLogged:Z

.field public updateJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/media/AudioManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    iget-object p2, p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->semIsDualPlaySupported()Z

    move-result p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->isDualAudioSupported:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init() - isDualAudioSupported = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    move-object v3, v0

    :cond_1
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->cr:Landroid/content/ContentResolver;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getNeedEarProtect()Z

    move-result p1

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2, v2}, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->checkVolumeLimiter(Landroid/content/ContentResolver;ZILkotlin/jvm/functions/Function0;)V

    :cond_5
    return-void
.end method

.method public final cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    instance-of p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getConnectionState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v2, "disconnectGuest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->disconnectGuest(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$EndMusicShareHost;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$EndMusicShareHost;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    :cond_4
    return-void
.end method

.method public final close()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string p0, "BluetoothDeviceController"

    const-string v0, "close()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 6

    const-string v0, "deselect() - "

    const-string v1, "BluetoothDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->activeDevices:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v4, v4, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->id:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v5, v5, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "deselect("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->setDualPlayMode(Z)Z

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$deselect$3$1;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$deselect$3$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_5
    return-void
.end method

.method public final select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 3

    const-string/jumbo v0, "select() - "

    const-string v1, "BluetoothDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->setDualPlayMode(Z)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$select$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$select$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string/jumbo v0, "transfer() - "

    const-string v1, "BluetoothDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    instance-of p1, v1, Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    check-cast v1, Landroid/media/AudioDeviceInfo;

    invoke-static {p0, v1}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->setDeviceForced(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)V

    goto :goto_1

    :cond_3
    instance-of p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_4

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateDevices(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;

    iget v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    move-object v0, v2

    goto/16 :goto_2b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    aget-object v11, v1, v10

    sget-object v12, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v13}, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->isValidDeviceTypeForMedia(Landroid/media/AudioDeviceInfo;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v7, :cond_b

    iget-object v10, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    if-eqz v10, :cond_b

    iget-object v10, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_b

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v13}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    move-result v13

    if-ne v13, v4, :cond_8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v11, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v12}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_b
    sget-object v10, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_6
    move-object/from16 v11, p1

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->isConnectedWithMembers(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "\t"

    const-string v15, "BluetoothDeviceController"

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->printActiveDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->getAllAddresses(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/util/List;

    move-result-object v9

    move-object v8, v1

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v5

    if-nez v8, :cond_10

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedAshaHearingAidDevice()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, v13, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v8, v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v8, :cond_f

    iget-object v9, v13, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v4, :cond_f

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    const/16 v8, 0xa

    goto :goto_9

    :cond_10
    :goto_b
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_14

    goto :goto_d

    :cond_14
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_17

    iget-object v9, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_15

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    :goto_e
    if-eqz v8, :cond_17

    iget-boolean v8, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->isDualAudioSupported:Z

    iput-boolean v8, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v8, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_17

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v7, :cond_17

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v7, :cond_17

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v7, :cond_16

    goto :goto_f

    :cond_16
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v7

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v7, 0x0

    :goto_10
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v11, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    move-object v11, v9

    goto :goto_12

    :cond_18
    const/4 v11, 0x0

    :goto_12
    if-eqz v11, :cond_1a

    sget-object v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice$Companion;

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v12}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v13, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v20

    sget-object v13, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;->toConverter(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    move-result-object v21

    invoke-static {v9, v12}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->isActiveDeviceWithMembers(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_13
    move-object/from16 v25, v5

    goto :goto_14

    :cond_19
    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_13

    :goto_14
    const/16 v29, 0x770

    const/16 v30, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v30}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Bluetooth:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object v5, v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->controllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    iput-object v9, v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_17

    :cond_1a
    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice$Companion;

    iget-object v11, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v12, v9, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v12, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;->toConverter(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    move-result-object v21

    invoke-static {v9, v11}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->isActiveDeviceWithMembers(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result v11

    if-eqz v11, :cond_1b

    sget-object v11, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_15
    move-object/from16 v25, v11

    goto :goto_16

    :cond_1b
    sget-object v11, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_15

    :goto_16
    const/16 v29, 0x374

    const/16 v30, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v5

    move/from16 v28, p2

    invoke-direct/range {v17 .. v30}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v5, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v11, v5

    :goto_17
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto/16 :goto_11

    :cond_1c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v9, v8, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    const/4 v10, 0x3

    if-eqz v9, :cond_23

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v11, v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v11, :cond_1d

    goto :goto_19

    :cond_1d
    const/4 v11, 0x0

    :goto_19
    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v11

    if-eqz v11, :cond_1f

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    iget-object v13, v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v13, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v13, 0x0

    :goto_1a
    iget-object v13, v13, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12, v13, v10}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v10

    :goto_1b
    move/from16 v20, v10

    goto :goto_1c

    :cond_1f
    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v12, v10}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v10

    goto :goto_1b

    :goto_1c
    iget-object v10, v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v10, :cond_20

    goto :goto_1d

    :cond_20
    const/4 v10, 0x0

    :goto_1d
    invoke-static {v10}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->getBatteryDescription(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;

    move-result-object v18

    if-eqz v7, :cond_21

    if-eqz v11, :cond_21

    sget-object v10, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_1e
    move-object/from16 v21, v10

    goto :goto_1f

    :cond_21
    move-object v10, v8

    check-cast v10, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v10, v10, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_1e

    :goto_1f
    iget-boolean v10, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_22

    if-eqz v11, :cond_22

    const/16 v22, 0x1

    goto :goto_20

    :cond_22
    const/16 v22, 0x0

    :goto_20
    const/16 v23, 0x65b

    const/16 v19, 0x0

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v23}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    const/16 v16, 0x0

    goto :goto_26

    :cond_23
    instance-of v9, v8, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v9, :cond_27

    new-instance v9, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;

    new-array v11, v4, [Ljava/lang/CharSequence;

    move-object v12, v8

    check-cast v12, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v13, v12, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v13, :cond_24

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->getBatteryDescription(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;

    move-result-object v13

    :goto_21
    const/16 v16, 0x0

    goto :goto_22

    :cond_24
    const/4 v13, 0x0

    goto :goto_21

    :goto_22
    aput-object v13, v11, v16

    move-object v13, v8

    check-cast v13, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v4, v13, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->description:Ljava/lang/CharSequence;

    const/16 v17, 0x1

    aput-object v4, v11, v17

    invoke-static {v11}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v11, "\n"

    invoke-direct {v9, v4, v11}, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->audioManager:Landroid/media/AudioManager;

    iget-object v11, v12, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v11, :cond_25

    iget-object v11, v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_23

    :cond_25
    const/4 v11, 0x0

    :goto_23
    invoke-virtual {v4, v11, v10}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v19

    if-eqz v7, :cond_26

    sget-object v4, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_24
    move-object/from16 v20, v4

    goto :goto_25

    :cond_26
    iget-object v4, v13, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->state:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_24

    :goto_25
    const/16 v22, 0x75b

    const/16 v21, 0x0

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    invoke-static/range {v17 .. v22}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->deepCopy$2(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    goto :goto_26

    :cond_27
    const/16 v16, 0x0

    const/4 v9, 0x0

    :goto_26
    if-eqz v9, :cond_28

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    const/4 v4, 0x2

    goto/16 :goto_18

    :cond_29
    if-eqz v7, :cond_2e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v7, :cond_2a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_2b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iput-object v4, v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->activeDevices:Ljava/util/List;

    goto :goto_29

    :cond_2e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-static {v14, v4, v15}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    goto :goto_2a

    :cond_2f
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v0, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$updateDevices$1;->label:I

    invoke-virtual {v1, v5, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_30

    return-object v3

    :cond_30
    :goto_2b
    iget-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->musicShareEventLogged:Z

    if-nez v1, :cond_31

    goto :goto_2c

    :cond_31
    const/4 v5, 0x0

    :goto_2c
    if-eqz v5, :cond_35

    check-cast v5, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v4, :cond_32

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_33
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v1, :cond_35

    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isConnected(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object v6, v1

    goto :goto_2e

    :cond_34
    const/4 v6, 0x0

    :goto_2e
    if-eqz v6, :cond_35

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MusicShareOnMyDevice;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MusicShareOnMyDevice;

    invoke-static {v1, v2}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->musicShareEventLogged:Z

    :cond_35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
