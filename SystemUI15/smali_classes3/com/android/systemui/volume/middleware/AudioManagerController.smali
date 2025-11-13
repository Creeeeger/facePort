.class public final Lcom/android/systemui/volume/middleware/AudioManagerController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator$delegate:Lkotlin/Lazy;

.field public isHeadsetConnected:Ljava/lang/Boolean;

.field public isPanelShowing:Z

.field public final log$delegate:Lkotlin/Lazy;

.field public final store$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->infraMediator$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$store$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController$store$2;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->store$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$log$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController$log$2;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->log$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/AudioManagerController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isHeadsetConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isHeadsetConnected:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isPanelShowing:Z

    if-nez v0, :cond_10

    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isPanelShowing:Z

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumeDeviceOn()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumePinDeviceOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBluetoothScoOn()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBluetoothScoOn()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isUserInCall()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v2

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isBtScoOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->btCallDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getDevicesForStreamMusic()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDevice()I

    move-result v6

    if-eq v5, v6, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    move v6, v1

    :cond_7
    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAudioMirroring()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLeBroadcasting()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isUserInCall()Z

    move-result v7

    if-nez v7, :cond_8

    move v1, v2

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->log$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAudioMirroring()Z

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLeBroadcasting()Z

    move-result v10

    const-string v11, "device="

    const-string v12, ", pinDevice="

    const-string v13, ", isSmartView="

    invoke-static {v11, v5, v12, v7, v13}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isAudioMirroring="

    const-string v11, ", isLeBroadcasting="

    invoke-static {v5, v8, v7, v9, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v7, ", isImportant="

    invoke-static {v5, v10, v7, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "AudioManagerController"

    invoke-virtual {v2, v7, v5}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_9
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinAppName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->pinAppName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-interface {p0, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->pinDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->pinDevice(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_3

    :cond_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getEarProtectLimit()I

    move-result v3

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->earProtectLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isHeadsetConnected:Ljava/lang/Boolean;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    if-nez v3, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumeDeviceOn()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumePinDeviceOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMultiSoundOn()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getDevicesForStreamMusic()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDevice()I

    move-result v3

    if-ne p1, v3, :cond_e

    move v3, v1

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getMultiSoundDevice()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_f

    if-eqz v3, :cond_f

    move v1, v2

    :cond_f
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isMultiSoundBt(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    :cond_10
    :goto_3
    return-object p1
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/AudioManagerController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    sget-object v1, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevel()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    sget-object v1, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v2

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result v1

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V

    goto :goto_1

    :cond_6
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeDirection()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    goto :goto_1

    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isPanelShowing:Z

    :goto_1
    return-void
.end method

.method public final getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->infraMediator$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-object p0
.end method

.method public final getStore()Lcom/android/systemui/volume/store/VolumePanelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->store$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    return-object p0
.end method

.method public final setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/volume/util/StreamUtil;->getMusicStream(Z)I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    if-ne v2, p2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceAddress()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-interface {p0, p2, p3, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    :goto_1
    return-void
.end method
