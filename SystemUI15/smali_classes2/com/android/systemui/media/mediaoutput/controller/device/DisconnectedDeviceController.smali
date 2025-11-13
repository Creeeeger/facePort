.class public final Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$Companion;


# instance fields
.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string p1, "DisconnectedDeviceController"

    const-string v0, "init()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string p0, "DisconnectedDeviceController"

    const-string v0, "close()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string/jumbo v0, "transfer() - "

    const-string v1, "DisconnectedDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->semConnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDevices$2(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;

    iget v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v1, 0xa

    const/4 v4, 0x0

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v6, :cond_4

    const/4 v7, 0x3

    const/4 v8, 0x2

    filled-new-array {v4, v8, v5, v7}, [I

    move-result-object v7

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_5
    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v8, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v6, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$2;

    invoke-static {v8, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$3;

    invoke-direct {v8, v7}, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$3;-><init>(Ljava/util/List;)V

    invoke-static {v6, v8}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$4;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$4;

    invoke-static {v6, v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$$inlined$sortedByDescending$1;

    invoke-direct {v7}, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$$inlined$sortedByDescending$1;-><init>()V

    new-instance v8, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {v8, v6, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    sget-object v6, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;

    invoke-static {v8, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->onEach(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v6

    invoke-static {v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    iget-object v9, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v12

    sget-object v9, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    invoke-virtual {v6, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;->toConverter(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    move-result-object v13

    const/16 v18, 0xf0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v8, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "DisconnectedDeviceController"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v7, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$1;->label:I

    invoke-virtual {v0, v7, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
