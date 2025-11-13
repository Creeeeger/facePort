.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

.field public final synthetic f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/samsung/systemui/splugins/volume/VolumeState;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumeState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    iput-object p3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput p4, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$4:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    iget-object v2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget v3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$3:I

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$4:Lcom/samsung/systemui/splugins/volume/VolumeState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getNameRes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->nameRes(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->level(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-static {p1, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isRoutedToBluetooth(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isMuted(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v5

    invoke-static {v0, v1, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->realLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenPriorityOnly()Z

    move-result v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isSliderEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getMin()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v7

    const/4 v8, 0x6

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, v8, :cond_1

    invoke-virtual {v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v6, 0x1

    :cond_1
    :goto_0
    invoke-virtual {v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->levelMin(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v5

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v8, :cond_3

    invoke-virtual {v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_1
    invoke-virtual {v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->levelMax(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    move-result v7

    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isVisible(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-static {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->iconType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-static {p1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->audibleLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->earProtectionLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    move-result v6

    invoke-static {p1, v3, v5, v6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->priority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result p0

    invoke-static {v4, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconClickable(IZ)Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isIconClickable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconEnabled(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isIconEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->smartViewLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->dualBtDeviceAddress(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->dualBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    :cond_5
    return-object p1
.end method
