.class public final Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$Companion;

.field public static final audioProfiles:Ljava/util/Set;

.field public static final builtinSpeaker:Landroid/media/AudioDeviceAttributes;


# instance fields
.field public final audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

.field public final backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final changes:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final currentAudioDeviceAttributes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->Companion:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$Companion;

    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->builtinSpeaker:Landroid/media/AudioDeviceAttributes;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->audioProfiles:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;Lcom/android/settingslib/volume/data/repository/AudioRepository;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-static {p2, p2, p3, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->changes:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object p1, p1, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->currentAudioDevice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$special$$inlined$map$1;

    invoke-direct {p4, p1, p0}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->builtinSpeaker:Landroid/media/AudioDeviceAttributes;

    invoke-static {p4, p5, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->currentAudioDeviceAttributes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isAvailable$1;

    invoke-direct {p4, p3}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isAvailable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p4, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isAvailable$2;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isAvailable$2;-><init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, p1, v0, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel$Unavailable;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel$Unavailable;

    invoke-static {v1, p5, p4, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->isAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$1;

    invoke-direct {v1, p3}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;-><init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Unknown;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Unknown;

    invoke-static {p1, p5, p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->isEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$getAudioDeviceAttributes(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lcom/android/systemui/volume/domain/model/AudioOutputDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;

    iget v1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;-><init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_6

    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    iget-object p1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->L$2:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object v4, p1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    iget-object v5, v3, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->L$2:Ljava/lang/Object;

    iput p0, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->label:I

    iget-object v5, v5, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;

    check-cast v5, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    invoke-virtual {v5, p2, v0}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->isSpatialAudioAvailableForDevice(Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    goto :goto_3

    :cond_3
    :goto_1
    check-cast v4, Landroid/media/AudioDeviceAttributes;

    :cond_4
    move-object v1, v4

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$BuiltIn;

    if-eqz p2, :cond_8

    sget-object p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->builtinSpeaker:Landroid/media/AudioDeviceAttributes;

    move-object v1, p0

    goto :goto_3

    :cond_8
    instance-of p2, p1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/flags/FeatureFlagsImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;

    iget-object p1, p1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput v3, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributes$1;->label:I

    new-instance p2, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributesByBluetoothProfile$2;

    invoke-direct {p2, p1, p0, v4}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$getAudioDeviceAttributesByBluetoothProfile$2;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move-object v1, p2

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final setEnabled(Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;

    iget v1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;-><init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioDeviceAttributes;

    iget-object p1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel;

    iget-object v2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->currentAudioDeviceAttributes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    if-nez p2, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    instance-of v2, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$SpatialAudioEnabled;

    iput-object p0, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->label:I

    iget-object v5, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;

    iget-object v5, v5, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;

    if-eqz v2, :cond_7

    check-cast v5, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    invoke-virtual {v5, p2, v0}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->addSpatialAudioCompatibleDevice(Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_7
    check-cast v5, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    invoke-virtual {v5, p2, v0}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->removeSpatialAudioCompatibleDevice(Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_1

    :cond_8
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne v2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;

    instance-of p1, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$HeadTrackingEnabled;

    iput-object p0, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->label:I

    iget-object v2, v2, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;

    check-cast v2, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    invoke-virtual {v2, p2, p1, v0}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->setHeadTrackingEnabled(Landroid/media/AudioDeviceAttributes;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_3

    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->changes:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v6, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$setEnabled$1;->label:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
