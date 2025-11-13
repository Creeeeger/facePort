.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allSoundMuteEnabled:Landroidx/lifecycle/MutableLiveData;

.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final iconAnimationType:Landroidx/lifecycle/MutableLiveData;

.field public final isAuraCasting:Landroidx/lifecycle/MutableLiveData;

.field public final isTouching:Landroidx/lifecycle/MutableLiveData;

.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final progress:Landroidx/lifecycle/MutableLiveData;

.field public final progressMax:Landroidx/lifecycle/MutableLiveData;

.field public final progressMin:Landroidx/lifecycle/MutableLiveData;

.field public final recheckCallback:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;

.field public final seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

.field public final smartViewEnabled:Landroidx/lifecycle/MutableLiveData;

.field public final volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

.field public final zenModeEnabled:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMin:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMax:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isAuraCasting:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->zenModeEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->allSoundMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->iconAnimationType:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isTouching:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->smartViewEnabled:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->mainThreadHandler$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;)V

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "#soundCraft.VolumeManager_updateVolumeModel"

    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iput-object p1, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModelCallback:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object p3

    iget-boolean p2, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iput-object p1, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModelCallback:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object p3

    iget-boolean p2, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->recheckCallback:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel$recheckCallback$1;

    return-void
.end method


# virtual methods
.method public final forceVolumeControlStream(I)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const-string v3, "SoundCraft.VolumeManager"

    const-string v4, "forceVolumeControlStream "

    if-eqz v2, :cond_0

    const-string v2, "#soundCraft.VolumeManager_forceVolumeControlStream"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-static {p1, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    :goto_0
    return-void
.end method

.method public final getIconType()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    const/16 v1, 0x80

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/4 v5, 0x3

    if-eq v0, v1, :cond_7

    const v1, 0x8000

    if-eq v0, v1, :cond_6

    const/high16 v1, 0x4000000

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x8000000

    if-eq v0, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_b

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds3(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    const/4 v5, 0x7

    goto :goto_3

    :cond_5
    const/4 v5, 0x2

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_b

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds3(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isHomeMini(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :cond_b
    :goto_3
    return v5
.end method

.method public final getSupportAnimatedIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVolumeShocked(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getIconType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result p0

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0xa

    if-lez p0, :cond_0

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final notifyChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->seekBarEnabled:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isAuraCasting:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->zenModeEnabled:Landroidx/lifecycle/MutableLiveData;

    iget v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->allSoundMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->iconAnimationType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getSupportAnimatedIcon()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    iget v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMin:Landroidx/lifecycle/MutableLiveData;

    iget v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progressMax:Landroidx/lifecycle/MutableLiveData;

    iget v2, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->smartViewEnabled:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
