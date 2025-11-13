.class public final Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field public final bluetoothDeviceList:Ljava/util/List;

.field public final callback:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;

.field public final context:Landroid/content/Context;

.field public final displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field public isRemoteStreamPlaying:Z

.field public isTracking:Z

.field public mediaController:Landroid/media/session/MediaController;

.field public final qpVolumeModelCallbacks:Ljava/util/ArrayList;

.field public remoteMaxVolume:I

.field public remoteMinVolume:I

.field public remoteSpeakerConnected:Z

.field public remoteStream:I

.field public remoteStreamEnabled:Z

.field public remoteVolumeLevel:I

.field public final volumeController$delegate:Lkotlin/Lazy;

.field public volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

.field public volumeModelCallback:Lkotlin/jvm/functions/Function2;

.field public final wiredEarphoneDeviceList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Lcom/android/systemui/volume/util/DisplayManagerWrapper;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->context:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$volumeController$2;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$volumeController$2;

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeController$delegate:Lkotlin/Lazy;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0xfff

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->wiredEarphoneDeviceList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothDeviceList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;)V

    iput-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->callback:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;

    return-void
.end method


# virtual methods
.method public final getDevice()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeHearingAidDevice()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothDeviceList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v1, v1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    if-nez v1, :cond_6

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isAurCastEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->wiredEarphoneDeviceList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 p0, 0x4000000

    goto :goto_2

    :cond_2
    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    if-eqz p0, :cond_5

    :cond_4
    const p0, 0x8000

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    :cond_6
    :goto_0
    const/16 p0, 0x80

    goto :goto_2

    :cond_7
    :goto_1
    const/high16 p0, 0x8000000

    :goto_2
    return p0
.end method

.method public final getMaxVolume()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteMaxVolume:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayMaxVolume()I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    :goto_0
    return p0
.end method

.method public final getMinVolume()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteMinVolume:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const-string v1, "mavo"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    :cond_1
    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    goto :goto_0

    :cond_2
    iget p0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    :goto_0
    return p0
.end method

.method public final getStreamVolume()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteVolumeLevel:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isStreamEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isAurCastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    goto :goto_0

    :cond_2
    iget p0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    :goto_0
    return p0
.end method

.method public final getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "#soundCraft.VolumeManager_getVolumeModel"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v3, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getStreamVolume()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getMinVolume()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getMaxVolume()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getDevice()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isStreamEnabled()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isAurCastEnabled()Z

    move-result v10

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v11, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    iget v12, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    iget-boolean v13, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    iget-boolean v14, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    iget-boolean v15, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    move-object v4, v3

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getStreamVolume()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getMinVolume()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getMaxVolume()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getDevice()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isStreamEnabled()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isAurCastEnabled()Z

    move-result v9

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v10, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    iget v11, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    iget-boolean v12, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    iget-boolean v13, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    iget-boolean v14, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    iget-boolean v15, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZ)V

    return-object v1
.end method

.method public final isAurCastEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStreamEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isAurCastEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    return v2
.end method

.method public final updateCurrentVolume()V
    .locals 6

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "#soundCraft.VolumeManager_updateCurrentVolume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModelCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iget-boolean v5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModelCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iget-boolean v3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isTracking:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public final updateRemoteVolume(ZIIIILandroid/media/session/MediaSession$Token;Z)V
    .locals 3

    const-string/jumbo v0, "updateRemoteVolume enabled = "

    const-string v1, " stream = "

    const-string v2, " volume = "

    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remoteSpeaker = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.VolumeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->callback:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    :cond_0
    iget-object p6, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz p6, :cond_1

    invoke-virtual {p6, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_1
    const/4 p6, 0x0

    iput-object p6, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->mediaController:Landroid/media/session/MediaController;

    :cond_2
    :goto_0
    iput-boolean p7, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteSpeakerConnected:Z

    iput-boolean p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    iput p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteMinVolume:I

    iput p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteMaxVolume:I

    iput p5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteVolumeLevel:I

    iput p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStream:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateCurrentVolume()V

    return-void
.end method
