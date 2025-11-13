.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;


# instance fields
.field public final _audioDevices:Landroidx/lifecycle/MutableLiveData;

.field public final audioDevices:Landroidx/lifecycle/MutableLiveData;

.field public final auracastDeviceController:Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;

.field public final controllerMap:Ljava/util/Map;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public isCastingPriority:Z

.field public isSupportDisplayOnlyRemoteDevice:Z

.field public isSupportSpotifyChromecast:Z

.field public numOfAudioOutputChanges:I

.field public packageName:Ljava/lang/String;

.field public transferJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;Ljavax/inject/Provider;Landroidx/datastore/core/DataStore;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;",
            "Ljavax/inject/Provider;",
            "Landroidx/datastore/core/DataStore;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p10, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->auracastDeviceController:Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;

    iput-object p12, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->isSupportDisplayOnlyRemoteDevice:Z

    sget-object p9, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->BuiltIn:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    new-instance p10, Lkotlin/Pair;

    invoke-direct {p10, p9, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Disconnected:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p6

    new-instance p9, Lkotlin/Pair;

    invoke-direct {p9, p2, p6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p10, p9}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p6

    if-eqz p6, :cond_0

    sget-object p6, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p7

    invoke-interface {p2, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    sget-object p7, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->SmartView:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p7, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Dex:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    sget-object p6, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Bluetooth:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p6, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->BluetoothGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/mediaoutput/controller/device/ChromeCastDeviceController;

    sget-object p4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCast:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCastGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;

    sget-object p4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->AudioMirroring:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->AudioMirroringGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    sget-object p4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Remote:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->_audioDevices:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->audioDevices:Landroidx/lifecycle/MutableLiveData;

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->numOfAudioOutputChanges:I

    const-string p1, "SessionAudioPathViewModel"

    const-string p2, "init()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p13, :cond_1

    const-string p1, "packageName"

    invoke-virtual {p13, p1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->setPackageName(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$3;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance p4, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p5, 0x2

    invoke-static {p1, p2, p3, p4, p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$5;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$5;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, p3, p4, p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$checkForBudsTogether(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Z)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkForBudsTogether() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionSelect - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionAudioPathViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->_audioDevices:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isConnected(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    const/4 v0, 0x0

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v3, v0

    :goto_5
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getFinalControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v5

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    if-eqz v4, :cond_b

    if-eqz p2, :cond_9

    invoke-virtual {v4, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    goto :goto_7

    :cond_9
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    move-object v1, v3

    :goto_6
    invoke-virtual {v4, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :cond_b
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    if-eqz p0, :cond_d

    instance-of p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    if-eqz p1, :cond_c

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    goto :goto_8

    :cond_c
    move-object p0, v0

    :goto_8
    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->setAudioSharingEnabled(Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_e
    return v2
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionAudioPathViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancel() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionAudioPathViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$cancel$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$cancel$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deselect() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionAudioPathViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$deselect$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$deselect$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getAudioDevices()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->audioDevices:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isBroadcasting()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->auracastDeviceController:Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->isBroadcasting(Landroid/media/AudioManager;)Z

    move-result p0

    return p0
.end method

.method public final onCleared()V
    .locals 2

    const-string v0, "SessionAudioPathViewModel"

    const-string v1, "onCleared()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    invoke-virtual {v1}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->auracastDeviceController:Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;->close()V

    return-void
.end method

.method public final select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "select() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionAudioPathViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$select$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$select$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->packageName:Ljava/lang/String;

    const-string v1, "packageName changed : "

    const-string v2, " -> "

    const-string v3, "SessionAudioPathViewModel"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCast:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    instance-of v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/ChromeCastDeviceController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/ChromeCastDeviceController;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, ""

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, p1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->setPackageName(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->AudioMirroring:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    instance-of v3, v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    if-nez p1, :cond_5

    move-object v3, v1

    goto :goto_4

    :cond_5
    move-object v3, p1

    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController;->setPackageName(Ljava/lang/String;)V

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Remote:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    instance-of v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    if-eqz v0, :cond_6

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    :cond_6
    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    if-nez p1, :cond_8

    move-object p1, v1

    :cond_8
    invoke-virtual {v2, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->setPackageName(Ljava/lang/String;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    const-string/jumbo v0, "transfer() - "

    const-string v1, "SessionAudioPathViewModel"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->transferJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo p0, "transfer() - blocked"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;

    invoke-direct {v3, p1, p0, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$transfer$3;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    invoke-static {v0, v1, v2, v3, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->transferJob:Lkotlinx/coroutines/Job;

    return-void
.end method
