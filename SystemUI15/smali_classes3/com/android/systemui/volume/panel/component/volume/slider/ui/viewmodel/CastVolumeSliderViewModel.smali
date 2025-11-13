.class public final Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mediaDeviceSessionInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;

.field public final session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

.field public final slider:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->mediaDeviceSessionInteractor:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;

    invoke-virtual {p4, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor;->playbackInfo(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;)Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaDeviceSessionInteractor$playbackInfo$$inlined$map$1;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1;

    invoke-direct {p3, p1, p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p4, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->INSTANCE:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

    invoke-static {p3, p2, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->slider:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getSlider()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->slider:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final onValueChangeFinished()V
    .locals 0

    return-void
.end method

.method public final onValueChanged(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;F)V
    .locals 1

    new-instance p1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$onValueChanged$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$onValueChanged$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;FLkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final toggleMuted(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V
    .locals 0

    return-void
.end method
