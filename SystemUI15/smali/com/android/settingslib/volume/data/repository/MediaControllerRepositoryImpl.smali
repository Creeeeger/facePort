.class public final Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/volume/data/repository/MediaControllerRepository;


# instance fields
.field public final activeSessions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mediaSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {p2}, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt;->getDefaultRemoteSessionChanged(Landroid/media/session/MediaSessionManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;)V

    invoke-static {p2}, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt;->getActiveMediaChanges(Landroid/media/session/MediaSessionManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManagerExtKt;->getHeadsetAudioModeChanges(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p3, p2, p0}, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    :goto_0
    check-cast p1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;

    iget-object p1, p1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    const-class p2, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamDevicesChanged;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p2

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$special$$inlined$map$3;

    invoke-direct {p1, v2, p0}, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;)V

    filled-new-array {v1, v0, p3, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$activeSessions$4;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl$activeSessions$4;-><init>(Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p3, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1, p4, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/volume/data/repository/MediaControllerRepositoryImpl;->activeSessions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
