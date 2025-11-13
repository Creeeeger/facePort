.class public final Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final castVolumeSliderViewModelFactory:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$Factory;

.field public final isPlaybackActive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mutableIsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final portraitExpandable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final sliderViewModels:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final streamSliderViewModelFactory:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$Factory;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$Factory;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$Factory;Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->streamSliderViewModelFactory:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$Factory;

    iput-object p5, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->castVolumeSliderViewModelFactory:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$Factory;

    const/4 p4, 0x0

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->mutableIsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;->defaultActiveMediaSession:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lcom/android/systemui/volume/panel/shared/model/ResultKt;->filterData(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lcom/android/systemui/volume/panel/shared/model/ResultKt$filterData$$inlined$map$1;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p5, p4, p3}, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;)V

    invoke-static {p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$isPlaybackActive$2;

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$isPlaybackActive$2;-><init>(Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p5, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p5, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p5, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$special$$inlined$flatMapLatest$2;

    invoke-direct {p3, p4, p0}, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;)V

    invoke-static {p5, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    sget-object p5, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Unavailable;->INSTANCE:Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Unavailable;

    invoke-static {p3, p1, p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->portraitExpandable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p6, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->volumePanelSliders:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$sliderViewModels$1;

    invoke-direct {p5, p0, p4}, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$sliderViewModels$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->sliderViewModels:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$onExpandedChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel$onExpandedChanged$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
