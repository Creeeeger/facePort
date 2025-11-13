.class public final Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public isShowMusicShareEnabled:Z

.field public isSupportSelectableBudsTogether:Z

.field public isTriggeredBudsTogether:Z

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public musicShareDeviceCount:I

.field public updateJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroidx/datastore/core/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/AudioManager;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Landroidx/datastore/core/DataStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->dataStore:Landroidx/datastore/core/DataStore;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isShowMusicShareEnabled:Z

    const-string p1, "MusicShareDeviceController"

    const-string p2, "init()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$3;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$3;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$4;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$4;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$updateDevices(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;

    iget v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v0

    move-object v0, v2

    goto/16 :goto_e

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_4

    aget-object v10, v1, v9

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v11

    const/16 v12, 0x19

    if-ne v11, v12, :cond_3

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    const-string v9, "hsp:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :cond_7
    :goto_2
    check-cast v4, Landroid/media/AudioDeviceInfo;

    iget-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isShowMusicShareEnabled:Z

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v11

    if-nez v11, :cond_9

    if-eqz v1, :cond_8

    :cond_9
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_b
    check-cast v9, Ljava/lang/Iterable;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v9, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice$Companion;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v12}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, -0x1

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-eqz v13, :cond_c

    iget-object v12, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    check-cast v13, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v15, v13, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v6, "getAudioSharingDeviceVolume"

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v13, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v6, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v6, v12}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v14

    :cond_e
    :goto_5
    mul-int/lit8 v21, v14, 0xa

    if-eqz v4, :cond_f

    sget-object v6, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-virtual {v12}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v12

    if-ne v12, v6, :cond_f

    sget-object v6, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_6

    :cond_f
    sget-object v6, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v12, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v12}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerAddress()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v13}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    invoke-static {v12, v14, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v18

    sget-object v12, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBtCastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;->toConverter(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    move-result-object v19

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v23, v6

    goto :goto_9

    :cond_10
    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfiles()Ljava/util/List;

    move-result-object v12

    move v13, v8

    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-eqz v14, :cond_12

    invoke-virtual {v10, v14}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I

    move-result v14

    if-eq v14, v5, :cond_11

    const/4 v15, 0x3

    if-ne v14, v15, :cond_12

    :cond_11
    sget-object v12, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTING:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_8
    move-object/from16 v23, v12

    goto :goto_9

    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_13
    sget-object v12, Lcom/android/systemui/media/mediaoutput/entity/State;->DISCONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_8

    :goto_9
    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_15

    sget-object v12, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    if-eq v6, v12, :cond_14

    goto :goto_a

    :cond_14
    move/from16 v25, v8

    goto :goto_b

    :cond_15
    :goto_a
    move/from16 v25, v5

    :goto_b
    invoke-virtual {v10}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v26

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v27, 0x150

    const/16 v28, 0x0

    move-object v15, v11

    invoke-direct/range {v15 .. v28}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iput-object v4, v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v6, v4, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getConnectionTimeStamp()J

    move-result-wide v8

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_d

    :cond_17
    const/4 v6, 0x0

    :goto_d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\t"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MusicShareDeviceController"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_18
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v0, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$updateDevices$1;->label:I

    invoke-virtual {v1, v7, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_19

    goto/16 :goto_12

    :cond_19
    :goto_e
    iget v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->musicShareDeviceCount:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v7, 0x0

    :cond_1a
    if-eqz v7, :cond_1f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->musicShareDeviceCount:I

    sget-object v2, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$SearchMusicShare;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$SearchMusicShare;

    new-instance v4, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Value;

    if-lez v1, :cond_1b

    const-string/jumbo v1, "y"

    goto :goto_f

    :cond_1b
    const-string v1, "n"

    :goto_f
    invoke-direct {v4, v1}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Value;-><init>(Ljava/lang/String;)V

    filled-new-array {v4}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    move-object v1, v7

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v7, 0x0

    :goto_10
    if-eqz v7, :cond_1f

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$NumberOfMusicShareDevice;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$NumberOfMusicShareDevice;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Number;

    iget v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->musicShareDeviceCount:I

    invoke-direct {v2, v0}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Number;-><init>(I)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isConnected(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v6, v1

    goto :goto_11

    :cond_1e
    const/4 v6, 0x0

    :goto_11
    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v6, :cond_1f

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$SharedDevicesWithMusicShare;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$SharedDevicesWithMusicShare;

    invoke-static {v0, v1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    :cond_1f
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_12
    return-object v3
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicShareDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz p1, :cond_2

    int-to-float v0, p2

    const/16 v1, 0xa

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v1, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAudioSharingDeviceVolume"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->setAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)Z

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    :cond_3
    return-void
.end method

.method public final cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 1

    const-string p0, "cancel() - "

    const-string v0, "MusicShareDeviceController"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object p0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->disconnect()V

    :cond_0
    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$EndMusicShareClient;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$EndMusicShareClient;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string v0, "MusicShareDeviceController"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->cancelDiscovery()V

    :cond_0
    return-void
.end method

.method public final deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string v0, "deselect() - "

    const-string v1, "MusicShareDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->setAudioSharingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final isAudioSharingEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v2, "isAudioSharingEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->isAudioSharingEnabled()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public final select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string/jumbo v0, "select() - "

    const-string v1, "MusicShareDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->setAudioSharingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setAudioSharingEnabled(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioSharingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->setAudioSharingEnabled(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 6

    const-string/jumbo v0, "transfer() - "

    const-string v1, "MusicShareDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isTriggeredBudsTogether:Z

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$transfer$2$1;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController$transfer$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {p1, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->connect()V

    goto :goto_3

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->cachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v4, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setActiveDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->setActiveDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->semGetInternalType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isAudioSharingEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->semGetAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const-string p0, "0"

    :goto_2
    invoke-virtual {p1, v1, p0}, Landroid/media/AudioManager;->semSetDeviceForced(ILjava/lang/String;)I

    :cond_7
    :goto_3
    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$PlayMusicShare;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$PlayMusicShare;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    :cond_8
    return-void
.end method
