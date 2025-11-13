.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;-><init>()V

    return-void
.end method

.method public static final access$changeInActiveState(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;Ljava/util/List;)Ljava/util/List;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

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

    check-cast v2, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v0, v8, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v0, :cond_2

    move-object v0, v8

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x17f

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;I)Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->deepCopy$1(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_2
    instance-of v0, v8, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v0, :cond_3

    move-object v0, v8

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x77f

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    goto :goto_2

    :cond_3
    instance-of v0, v8, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v0, :cond_4

    move-object v0, v8

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x77f

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->deepCopy$2(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method public static final access$updateStateWithRouteDevices(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    invoke-interface {v3}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x17f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    invoke-interface {v5}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_5
    move-object v1, v4

    :goto_2
    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    if-eqz v1, :cond_9

    sget-object p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v7, :cond_6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {p2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object v1, v5, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->routeDevice:Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-static {v5, v4, v3, v7, v2}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;I)Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->deepCopy$1(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {p2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v3, v3, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->id:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {p3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object p2, v1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->routeDevice:Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/4 v8, 0x0

    const/16 v9, 0x67f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {p3, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_13
    move-object p1, v4

    :goto_a
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object p0

    if-eqz p0, :cond_1b

    sget-object p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v5, :cond_14

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    iput-object p0, v0, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->routingControllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-static {v0, v4, v3, v5, v2}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;I)Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->deepCopy$1(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {p2, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_17
    sget-object p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {p3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    check-cast p2, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iput-object p0, p2, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->routingControllerType:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/4 v6, 0x0

    const/16 v7, 0x67f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1b
    return-void
.end method
