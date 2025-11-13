.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion;


# instance fields
.field public final _mediaDevicesFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public final deviceId:Ljava/lang/String;

.field public final empty$delegate:Lkotlin/Lazy;

.field public isSupportForUnsupportedTV:Z

.field public final mediaDevices:Landroidx/lifecycle/CoroutineLiveData;

.field public final mediaInfo:Lkotlinx/coroutines/flow/Flow;

.field public final mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final updateDeviceInfo:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/shade/ShadeController;Landroidx/datastore/core/DataStore;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Landroidx/datastore/core/DataStore;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->shadeController:Lcom/android/systemui/shade/ShadeController;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->updateDeviceInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->_mediaDevicesFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p3}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaDevices:Landroidx/lifecycle/CoroutineLiveData;

    sget-object p4, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$empty$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$empty$2;

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->empty$delegate:Lkotlin/Lazy;

    new-instance p4, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p4}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;

    invoke-direct {v0, p4, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;)V

    invoke-virtual {p4, p3, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {p2}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$2;

    invoke-direct {p3, p4, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$2;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;)V

    invoke-virtual {p4, p2, p3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {p4}, Landroidx/lifecycle/FlowLiveDataConversions;->asFlow(Landroidx/lifecycle/MediatorLiveData;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaInfo:Lkotlinx/coroutines/flow/Flow;

    const-string p2, "MediaDeviceViewModel"

    const-string p3, "init()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    const-string p4, "deviceId"

    invoke-virtual {p5, p4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    iget-object p5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->deviceId:Ljava/lang/String;

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x3

    if-nez p5, :cond_1

    iget-object p5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->deviceId:Ljava/lang/String;

    const-string v1, "deviceId changed : "

    const-string v2, " -> "

    invoke-static {v1, p5, v2, p4, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->deviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object p1, p1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputDeviceOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;

    invoke-virtual {p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;->startCloudSync()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$deviceId$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$deviceId$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$mediaInfo$lambda$1$selectedInfo(Ljava/util/List;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;)Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;
    .locals 3

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    if-nez v0, :cond_3

    :cond_2
    iget-object p0, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->empty$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    :cond_3
    return-object v0
.end method

.method public static final access$updateDevices(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;

    iget v3, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v4, v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->supportServiceClientStateManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/SupportServiceClientStateManager;

    iget-object v4, v4, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/SupportServiceClientStateManager;->mediaSdkSupportServiceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    iget-object v4, v4, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceConnectedStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_f

    iget-object v4, v4, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v4, v4, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceStatusOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;

    invoke-virtual {v4}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;->getDevices()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_f

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "\t"

    const-string v10, "MediaDeviceViewModel"

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    iget-object v11, v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;

    iget-boolean v13, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->isSupportForUnsupportedTV:Z

    if-nez v13, :cond_6

    iget-object v12, v12, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->deviceId:Ljava/lang/String;

    iget-object v11, v11, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceStatusOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;

    invoke-virtual {v11, v12}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;->isSupported(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_6
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo$Companion;

    iget-object v12, v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->deviceId:Ljava/lang/String;

    iget-object v13, v11, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaContentOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;

    invoke-virtual {v13, v12}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediacontent/MediaContentOperationImpl;->getMediaContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    goto :goto_5

    :cond_8
    move-object v12, v6

    :goto_5
    if-eqz v12, :cond_9

    :goto_6
    move-object/from16 v16, v12

    goto :goto_7

    :cond_9
    new-instance v12, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v8, 0x7f13041f

    const/4 v13, 0x2

    invoke-direct {v12, v8, v6, v13, v6}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :goto_7
    new-instance v8, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    const/16 v19, 0x8

    const/16 v20, 0x0

    iget-object v15, v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->deviceId:Ljava/lang/String;

    iget-object v12, v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->deviceName:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v8

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v12, v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->roomName:Ljava/lang/String;

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v5

    if-eqz v13, :cond_a

    goto :goto_8

    :cond_a
    move-object v12, v6

    :goto_8
    iget-object v7, v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->deviceName:Ljava/lang/String;

    if-eqz v12, :cond_c

    const-string v13, " - "

    invoke-static {v7, v13, v12}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    goto :goto_9

    :cond_b
    move-object v7, v12

    :cond_c
    :goto_9
    iput-object v7, v8, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->roomDetails:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_e
    move-object v6, v1

    :cond_f
    if-nez v6, :cond_10

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_b

    :cond_10
    move-object v1, v6

    :goto_b
    iput-object v6, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$updateDevices$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->_mediaDevicesFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne v0, v3, :cond_11

    goto :goto_d

    :cond_11
    :goto_c
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_d
    return-object v3
.end method


# virtual methods
.method public final execute(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;JJ)V
    .locals 3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "execute() - "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "MediaDeviceViewModel"

    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p4, 0x2

    cmp-long p4, p2, p4

    iget-object p5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    if-nez p4, :cond_0

    iget-object p0, p5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;->setMute(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$Mute;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$Mute;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4

    cmp-long p4, p2, v0

    if-nez p4, :cond_1

    iget-object p0, p5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;->updateVolume(ILjava/lang/String;)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$VolumeDown;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$VolumeDown;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x8

    cmp-long p4, p2, v0

    const/4 v0, 0x1

    if-nez p4, :cond_2

    iget-object p0, p5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;->updateVolume(ILjava/lang/String;)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$VolumeUp;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$VolumeUp;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x10

    cmp-long p4, p2, v1

    if-nez p4, :cond_3

    iget-object p0, p5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceControlOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicecontrol/DeviceControlOperationImpl;->togglePlayback(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$PlayPause;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$PlayPause;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto :goto_0

    :cond_3
    const-wide/16 p4, 0x20

    cmp-long p2, p2, p4

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$execute$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$RemoteControl;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$RemoteControl;

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->empty$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    return-object p0
.end method

.method public final getMediaInfo()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaInfo:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final onCleared()V
    .locals 2

    const-string v0, "MediaDeviceViewModel"

    const-string v1, "onCleared()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputDeviceOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;

    invoke-virtual {p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceOperationImpl;->stopCloudSync()V

    return-void
.end method
