.class public final Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final volumePanelSliders:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;Lcom/android/settingslib/volume/data/repository/AudioRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;->activeMediaDeviceSessions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputInteractor;->defaultActiveMediaSession:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lcom/android/systemui/volume/panel/shared/model/ResultKt;->filterData(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lcom/android/systemui/volume/panel/shared/model/ResultKt$filterData$$inlined$map$1;

    move-result-object p2

    check-cast p3, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    invoke-virtual {p3}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->getCommunicationDevice()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    new-instance v1, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/coroutines/Continuation;)V

    filled-new-array {v0, p2, p3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3;

    invoke-direct {p3, p2, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function5;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p3}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->volumePanelSliders:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/volume/panel/component/volume/domain/model/SliderType$Stream;

    invoke-static {p2}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/panel/component/volume/domain/model/SliderType$Stream;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    return-void
.end method
