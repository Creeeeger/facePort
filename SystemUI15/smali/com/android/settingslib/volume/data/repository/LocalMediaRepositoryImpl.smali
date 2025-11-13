.class public final Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentConnectedDevice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final devicesChanges:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final mediaDevicesUpdates:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;Lcom/android/settingslib/media/LocalMediaManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    check-cast p1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;

    iget-object p1, p1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    const-class v0, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamDevicesChanged;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1;-><init>(Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v3, 0x0

    invoke-static {p1, p3, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    filled-new-array {v1, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    new-instance v1, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v1, p1, p0}, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl;)V

    new-instance p1, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$currentConnectedDevice$2;

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$currentConnectedDevice$2;-><init>(Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-virtual {p2}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    invoke-static {v0, p3, v2, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl;->currentConnectedDevice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
