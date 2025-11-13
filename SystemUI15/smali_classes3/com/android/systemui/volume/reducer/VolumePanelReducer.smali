.class public final Lcom/android/systemui/volume/reducer/VolumePanelReducer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyActiveState(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static applyRowOrder(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    const/16 v1, 0xbb8

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result v0

    const/16 v2, 0x1388

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda16;

    invoke-direct {v2, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda16;-><init>(J)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    move-result p3

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    const/4 v0, 0x0

    invoke-direct {p4, p1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    const/4 v0, 0x3

    invoke-direct {p4, p2, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0
.end method

.method public static checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z
    .locals 2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    const/4 p4, 0x5

    if-ne p1, p4, :cond_3

    move p1, p3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :cond_5
    :goto_0
    return p1
.end method

.method public static determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)I
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaDeviceOn()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaPinDeviceOn()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    move-result p1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    const/16 p1, 0x17

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getEarProtectLevel()I

    move-result p0

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Z
    .locals 11

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eqz v1, :cond_0

    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v5

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDisabledFixedSession()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v8, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v8, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    :cond_3
    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isFixedScoVolume()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v8

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDisallowRinger()Z

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDisallowSystem()Z

    move-result v9

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDisallowMedia()Z

    move-result v10

    if-eqz p3, :cond_6

    invoke-static {p0, v10, v9, v6, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z

    move-result p3

    if-eqz p3, :cond_6

    move p3, v8

    goto :goto_4

    :cond_6
    move p3, v7

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    const/16 v9, 0x15

    if-ne v1, v9, :cond_8

    :goto_5
    move v1, v8

    goto :goto_6

    :cond_8
    move v1, v7

    :goto_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenNone()Z

    move-result v9

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v10

    if-eqz v1, :cond_a

    if-nez v9, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    move v1, v8

    goto :goto_7

    :cond_a
    move v1, v7

    :goto_7
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getBroadcastMode()I

    move-result p2

    invoke-static {p0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    if-ne v0, v8, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    if-ne v0, v6, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_e

    :goto_8
    if-ne p2, v2, :cond_e

    :cond_d
    :goto_9
    move p2, v8

    goto :goto_a

    :cond_e
    move p2, v7

    :goto_a
    if-nez v10, :cond_10

    if-nez v1, :cond_10

    if-nez v5, :cond_10

    if-nez p3, :cond_10

    if-eqz p2, :cond_f

    goto :goto_b

    :cond_f
    move p2, v7

    goto :goto_c

    :cond_10
    :goto_b
    move p2, v8

    :goto_c
    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    const/16 p3, 0x14

    if-ne p0, p3, :cond_11

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSupportTvVolumeSync()Z

    move-result p0

    if-eqz p0, :cond_11

    return v7

    :cond_11
    if-eqz v4, :cond_12

    if-nez p2, :cond_12

    move v7, v8

    :cond_12
    return v7
.end method

.method public static determineIconClickable(IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static determineIconEnabled(IZ)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/16 p1, 0x14

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x5

    invoke-static {v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHeadset()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBuds()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBuds3()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0xd

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHomeMini()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0xc

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHearingAid()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0xe

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToRemoteSpeaker()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_8

    move v0, v1

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDynamic()Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    :goto_0
    const/4 p0, 0x7

    move v0, p0

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    const/16 v4, 0x15

    if-ne v2, v4, :cond_c

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToAppMirroring()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x8

    goto :goto_5

    :cond_c
    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    move-result v1

    if-ne v1, v0, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    if-ne v0, v3, :cond_f

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_3

    :cond_11
    :goto_2
    const/4 v0, 0x3

    goto :goto_5

    :cond_12
    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)I
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    const/16 v4, 0x15

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenNone()Z

    move-result p1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    move-result v1

    if-ne v1, p2, :cond_4

    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    xor-int/2addr p2, v3

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    move-result p2

    if-nez p2, :cond_8

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result v2

    :cond_8
    :goto_4
    return v2
.end method

.method public static determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActiveBtDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getRemoteLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getOriginalPriority()I

    move-result v0

    const/16 v1, 0x16

    const/4 v2, 0x3

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    const/16 p3, 0x17

    if-ne p1, p3, :cond_2

    move p1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    if-ne v1, p1, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getPriority()I

    move-result p2

    if-ne p2, v3, :cond_6

    :cond_5
    :goto_1
    move v0, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p0, p3, :cond_7

    if-ne p1, v2, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method public static determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isImportant()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x17

    const/4 v5, 0x3

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v6

    if-ne v6, v5, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    const/16 v4, 0x15

    if-eqz p4, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    const/16 v7, 0x16

    if-eq p1, v6, :cond_5

    if-ne p1, v7, :cond_4

    goto :goto_3

    :cond_4
    move p1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v3

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v6

    if-eqz p4, :cond_6

    move v5, v4

    :cond_6
    if-eq v6, v5, :cond_8

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p4

    if-ne p4, v7, :cond_7

    goto :goto_5

    :cond_7
    move p4, v2

    goto :goto_6

    :cond_8
    :goto_5
    move p4, v3

    :goto_6
    if-nez p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    if-eqz p4, :cond_9

    if-eqz v0, :cond_9

    move p1, v3

    goto :goto_7

    :cond_9
    move p1, v2

    :goto_7
    if-eqz p2, :cond_a

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isActiveShow()Z

    move-result p0

    if-nez p0, :cond_b

    :cond_a
    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    :cond_b
    move v2, v3

    :cond_c
    return v2
.end method

.method public static getAppDevicePairName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ") ("

    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getImpliedLevel(III)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0x15

    if-eq p0, v0, :cond_4

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ne p0, v0, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    mul-int/lit8 p0, p1, 0x64

    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    if-ne p2, p0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    float-to-int p0, p2

    add-int/lit8 p1, p0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    div-int/lit8 p2, p2, 0xa

    mul-int/lit8 p1, p2, 0xa

    :goto_1
    return p1
.end method

.method public static getVolumePanelRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZZ)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda23;

    invoke-direct {v0, p2, p3, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda23;-><init>(IZZ)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static isDisabledWarningDialog(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    const/16 p1, 0xf

    if-eq p0, p1, :cond_0

    const/16 p1, 0x11

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static prepareVolumePanelRow(Z)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/16 v5, 0x14

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/16 v5, 0x15

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/16 v5, 0x17

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static resetActiveState(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    const/4 v0, 0x4

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static updateAccessibilityRowPriority(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getAudibleLevel()I

    move-result p0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public static updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v5

    if-nez v5, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v6, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumeState;)V

    invoke-interface {p0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getLastAudibleLevelOrMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMin()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getAudibleLevel()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVoiceCapable()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    if-ne p0, v3, :cond_3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne p0, v2, :cond_3

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    move-result p0

    if-ne p0, v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result p0

    if-nez p0, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    goto :goto_2

    :cond_2
    if-nez v0, :cond_5

    :goto_1
    move v0, p2

    goto :goto_2

    :cond_3
    const/16 p1, 0x14

    if-eq p0, p1, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0
.end method

.method public mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x14

    const/high16 v7, 0x8000000

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_SET_SAFETY_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_KEY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isKeyDown()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isKeyDown(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isVibrating()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isVibrating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_4
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeCsd100WarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getFlags()I

    move-result v1

    and-int/2addr v1, v7

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_1
    invoke-static {v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeCsd100WarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_6
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DUAL_PLAY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_7
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_VOLUME_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIconTargetState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->iconTargetState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIconCurrentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->iconCurrentState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_8
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CAPTION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    move-result v1

    xor-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCaptionComponentEnabled()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCaptionEnabled()Z

    move-result v1

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CAPTION_COMPONENT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCaptionComponentEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_LEFT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_RIGHT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_FOLDER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isFolded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isFolded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_d
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STATUS_LE_BROADCASTING_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_e
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STATUS_DO_NOT_DISTURB_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STATUS_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_10
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_TOUCH_UP:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_11
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_TOUCH_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_12
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_START_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_13
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SETTINGS_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_14
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_15
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_16
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_17
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeSafetyWarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getFlags()I

    move-result v1

    and-int/2addr v1, v7

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_4
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_5
    invoke-static {v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeSafetyWarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_7
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_19
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->resetActiveState(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isExpanded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeLimiterDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1d
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_8
    invoke-static {v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_9
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeLimiterDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_1f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCoverClosed()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCoverClosed(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCoverType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->coverType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_b
    :goto_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_COVER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCoverClosed()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCoverClosed(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCoverType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->coverType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isDensityOrFontChanged()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isDisplayTypeChanged()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActiveStream()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_1

    :cond_10
    move v8, v9

    :cond_11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isFromKey()Z

    move-result v3

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeDirection()I

    move-result v1

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->volumeDirection(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_12
    if-eq v0, v6, :cond_15

    if-nez v8, :cond_13

    if-nez v3, :cond_15

    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2

    :cond_14
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_15
    :goto_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControls()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControlsText()I

    move-result v1

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_24
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isShowA11yStream()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowA11yStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_25
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSetupWizardComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_26
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isAllSoundOff()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControls()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControlsText()I

    move-result v1

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_3

    :cond_16
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_17
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getProgress()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSystemTimeNow()J

    move-result-wide v4

    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_29
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    if-ne v1, v6, :cond_18

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_18
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/volume/reducer/VolumePanelReducer;ILcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVoiceCapable()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1a

    if-ne v1, v4, :cond_19

    goto :goto_4

    :cond_19
    move v8, v9

    goto :goto_4

    :cond_1a
    const/4 v3, 0x5

    if-ne v1, v3, :cond_19

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result v3

    if-eqz v8, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSilent(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    :goto_5
    move v9, v3

    goto :goto_6

    :cond_1b
    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNormal(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_5

    :cond_1c
    move v9, v4

    goto :goto_6

    :cond_1d
    move v9, v1

    :cond_1e
    :goto_6
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->ringerModeInternal(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2a
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getProgress()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSystemTimeNow()J

    move-result-wide v4

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda22;

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda22;-><init>(IIJ)V

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_1f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isTracking(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda27;

    invoke-direct {v3, v1, v9}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda27;-><init>(IZ)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda27;

    invoke-direct {v3, v1, v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda27;-><init>(IZ)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isTracking(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v3

    invoke-static {v2, v1, v3, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getVolumePanelRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_21

    if-eqz v3, :cond_21

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_21

    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAccessibilityRowPriority(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_21
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControls()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControlsText()I

    move-result v4

    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v5, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isExpanded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isPendingState()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_22
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_23
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_2f
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActiveStream()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v4

    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v5

    if-nez v5, :cond_25

    goto/16 :goto_e

    :cond_25
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenEnabled()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isVoiceCapable()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSystemTimeNow()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isAodVolumePanel()Z

    move-result v12

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isLeBroadcasting()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v14

    if-eqz v9, :cond_26

    invoke-interface {v14}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    new-instance v8, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    move-object/from16 v16, v14

    const/4 v14, 0x1

    invoke-direct {v8, v14}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v15, v8}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    move-result-object v14

    goto :goto_7

    :cond_26
    move-object/from16 v16, v14

    :cond_27
    move-object/from16 v14, v16

    :goto_7
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v14, v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v14

    invoke-static {v0, v8, v14, v6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1, v2, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;

    move-result-object v0

    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isRemoteMic(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isZenMode(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isLeBroadcasting(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->ringerModeInternal(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAodVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaDeviceOn()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaPinDeviceOn()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getEarProtectLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->earProtectLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    move-result v1

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isMultiSoundBt(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_28
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_30
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_8

    :cond_29
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_2a
    :goto_8
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_32
    move v1, v8

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_9

    :cond_2b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_2c
    :goto_9
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_a

    :cond_2d
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :cond_2e
    :goto_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_35
    move v1, v8

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isQpVolumeBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_d

    :cond_2f
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_c

    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControls()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControlsText()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v5

    invoke-static {v2, v1, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getVolumePanelRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getPinAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getPinDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getAudioSharingDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result v7

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v13, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;-><init>(ZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaDeviceOn()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaPinDeviceOn()Z

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;

    invoke-direct {v7, v5, v6, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;-><init>(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyActiveState(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    move-result v7

    new-instance v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    if-eqz v7, :cond_31

    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    goto :goto_b

    :cond_31
    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    :goto_b
    invoke-virtual {v8, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOutControls(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOutControlsText(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v8

    invoke-static {v2, v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMediaDefault()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isMediaDefaultEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isLockscreen()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isLockscreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCutoutHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->cutoutHeight(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getPinDevice()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->pinDevice(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isBtScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isBtScoOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    xor-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto :goto_e

    :cond_32
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControls()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControlsText()I

    move-result v1

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v3

    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto :goto_e

    :cond_33
    :goto_d
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto :goto_e

    :pswitch_37
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    goto :goto_e

    :pswitch_38
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isVoiceCapable()Z

    move-result v0

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-static {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isHasVibrator()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isHasVibrator(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isAllSoundOff()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSetupWizardComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v3

    :goto_e
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
