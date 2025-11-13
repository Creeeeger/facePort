.class public final Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;-><init>()V

    sput-object v0, Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convert(Lcom/android/systemui/plugins/VolumeDialogController$State;)Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;-><init>()V

    sget-object v1, Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;

    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;->convert(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setStreamStates(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->ringerModeInternal(I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->fixedScoVolume(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->remoteMic(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->zenMode(I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->disallowRinger(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->disallowSystem(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->disallowMedia(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->isDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->isAodVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->isLeBroadcasting(Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->broadcastMode:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->broadcastMode(I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convert(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/VolumeDialogController$StreamState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/systemui/util/SparseArrayUtilsKt;->asMap(Landroid/util/SparseArray;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt___MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;-><init>()V

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->nameRes(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isDynamic(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isMuted(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isMuteSupport(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToBt(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToAppMirroring(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToRemoteSpeaker(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToBuds(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToBuds3(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToHomeMini(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToHearingAid(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isRoutedToHeadset(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->isDisabledFixedSession(Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->level(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->min(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->max(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->dualBtDeviceAddress(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->dualBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object p1
.end method
