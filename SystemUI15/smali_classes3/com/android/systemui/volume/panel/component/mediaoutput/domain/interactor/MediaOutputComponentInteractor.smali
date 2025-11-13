.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentAudioDevice:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$filter$1;

.field public final mediaDeviceSessionInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;

.field public final mediaOutputModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sessionWithPlaybackState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;->mediaDeviceSessionInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;

    iget-object p2, p5, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;->defaultActiveMediaSession:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lcom/android/systemui/volume/panel/shared/model/ResultKt;->filterData(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lcom/android/systemui/volume/panel/shared/model/ResultKt$filterData$$inlined$map$1;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p5, v0, p0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;)V

    invoke-static {p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/volume/panel/shared/model/ResultKt$wrapInResult$$inlined$map$1;

    invoke-direct {p5, p2}, Lcom/android/systemui/volume/panel/shared/model/ResultKt$wrapInResult$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance v1, Lcom/android/systemui/volume/panel/shared/model/Result$Loading;

    invoke-direct {v1}, Lcom/android/systemui/volume/panel/shared/model/Result$Loading;-><init>()V

    invoke-static {p5, p1, p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;->sessionWithPlaybackState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p3, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->currentAudioDevice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$filter$1;

    invoke-direct {v1, p5}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;->currentAudioDevice:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$filter$1;

    iget-object p4, p4, Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;->isOngoingCall:Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor$special$$inlined$map$1;

    new-instance p5, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p5, v0, p3, p0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;)V

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/panel/shared/model/ResultKt$wrapInResult$$inlined$map$1;

    invoke-direct {p4, p3}, Lcom/android/systemui/volume/panel/shared/model/ResultKt$wrapInResult$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/volume/panel/shared/model/Result$Loading;

    invoke-direct {p3}, Lcom/android/systemui/volume/panel/shared/model/Result$Loading;-><init>()V

    invoke-static {p4, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor;->mediaOutputModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
