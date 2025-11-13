.class public final Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;


# instance fields
.field public final audioStream:I

.field public final audioVolumeInteractor:Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final disabledTextByStream:Ljava/util/Map;

.field public final iconsByStream:Ljava/util/Map;

.field public final labelsByStream:Ljava/util/Map;

.field public final slider:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final streamsAffectedByRing:Ljava/util/Set;

.field public final uiEventByStream:Ljava/util/Map;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final volumeChanges:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$FactoryAudioStreamWrapper;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->context:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->audioVolumeInteractor:Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->volumeChanges:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->streamsAffectedByRing:Ljava/util/Set;

    move-object/from16 v6, p1

    iget v6, v6, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$FactoryAudioStreamWrapper;->audioStream:I

    iput v6, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->audioStream:I

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v8}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    const v10, 0x7f080a5c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v10

    const v12, 0x7f08084b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v10, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x6

    invoke-static {v10}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v10}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v13, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v12

    const v13, 0x7f080aba

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v7}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v12

    const v13, 0x7f080b6a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v12

    const v13, 0x7f080b56

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v14

    move-object v13, v15

    move-object v14, v3

    move-object v15, v7

    move-object/from16 v16, v5

    filled-new-array/range {v11 .. v16}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->iconsByStream:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v8}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    const v5, 0x7f1312cc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    const v5, 0x7f1312d3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v10}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v5

    const v3, 0x7f1312cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v5

    const v3, 0x7f1312cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    const v5, 0x7f1312c7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v7

    filled-new-array/range {v11 .. v16}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->labelsByStream:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v5

    const v3, 0x7f1312ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->disabledTextByStream:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v8}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_MUSIC_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_VOICE_CALL_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v10}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_RING_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_NOTIFICATION_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_ALARM_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v7

    filled-new-array/range {v11 .. v16}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->uiEventByStream:Ljava/util/Map;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v3

    invoke-virtual {v2, v6}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->canChangeVolume-tLTdkI8(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iget-object v2, v2, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    check-cast v2, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    iget-object v2, v2, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->ringerMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v5, v2, v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v5, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->INSTANCE:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

    invoke-static {v2, v1, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->slider:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getSlider()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->slider:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final onValueChangeFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->uiEventByStream:Ljava/util/Map;

    iget v1, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->audioStream:I

    invoke-static {v1}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    return-void
.end method

.method public final onValueChanged(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;F)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->volumeChanges:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final toggleMuted(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$toggleMuted$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$toggleMuted$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
