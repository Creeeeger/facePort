.class public final Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final context:Landroid/content/Context;

.field public final currentAudioDevice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final deviceIconInteractor:Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;

.field public final isInAudioSharing:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mediaOutputInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/volume/data/repository/AudioRepository;Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothAdapter;Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;Lcom/android/settingslib/volume/data/repository/AudioSharingRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p7, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p8, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->deviceIconInteractor:Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;

    iput-object p9, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->mediaOutputInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;

    iget-object p1, p3, Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;->isOngoingCall:Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor$special$$inlined$map$1;

    new-instance p3, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$special$$inlined$flatMapLatest$1;

    const/4 p6, 0x0

    invoke-direct {p3, p6, p2, p0}, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/settingslib/volume/data/repository/AudioRepository;Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p3, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Unknown;->INSTANCE:Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Unknown;

    invoke-static {p1, p4, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->currentAudioDevice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p10, Lcom/android/settingslib/volume/data/repository/AudioSharingRepositoryImpl;

    iget-object p1, p10, Lcom/android/settingslib/volume/data/repository/AudioSharingRepositoryImpl;->inAudioSharing:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    iput-object p1, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->isInAudioSharing:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-void
.end method
