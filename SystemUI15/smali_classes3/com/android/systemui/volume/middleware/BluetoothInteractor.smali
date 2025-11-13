.class public final Lcom/android/systemui/volume/middleware/BluetoothInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public isPanelShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/BluetoothInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/BluetoothInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/BluetoothInteractor;->isPanelShowing:Z

    if-nez v0, :cond_c

    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BluetoothInteractor;->isPanelShowing:Z

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/BluetoothInteractor;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBudsTogetherEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getAudioCastDeviceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p0

    if-nez p0, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v2, :cond_b

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/volume/util/StreamUtil;->getMusicStream(Z)I

    move-result v4

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->activeBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    :goto_3
    move-object p1, p0

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    :cond_c
    :goto_4
    return-object p1
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/middleware/BluetoothInteractor$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/BluetoothInteractor;->isPanelShowing:Z

    :cond_0
    return-void
.end method
