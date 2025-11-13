.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _previousIconOverlayWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _previousIconWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activeAuthType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final contentDescriptionId:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

.field public final iconAsset:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final iconOverlayAsset:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final iconSize:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

.field public final shouldAnimateIconOverlay:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final shouldAnimateIconView:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final shouldFlipIconView:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final showingError:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->modalities:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->faceMode:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$activeAuthType$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v4, v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->activeAuthType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p4, p4, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p2, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object p2, p2, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$udfpsSensorBounds$1;

    invoke-direct {v0, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$udfpsSensorBounds$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, p4, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->_previousIconWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->_previousIconOverlayWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconSize$1;

    invoke-direct {p2, p1, v3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconSize$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    iget-object p4, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->position:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->legacyFingerprintSensorWidth:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->legacyFingerprintSensorHeight:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-static {p4, v4, v0, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p2, v3, p0, p3, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    invoke-static {v4, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->iconAsset:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$2;

    invoke-direct {p2, v3, p0, p3, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    invoke-static {v4, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->iconOverlayAsset:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$3;

    invoke-direct {p2, v3, p3, p1, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    invoke-static {v4, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->contentDescriptionId:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$4;

    invoke-direct {p2, v3, p3, p1, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    invoke-static {v4, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->shouldAnimateIconView:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$5;

    invoke-direct {p2, v3, p3, p1, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$5;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    invoke-static {v4, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->shouldAnimateIconOverlay:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$6;

    invoke-direct {p1, v3, p3, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$6;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    invoke-static {v4, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->shouldFlipIconView:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method

.method public static final access$getSfpsIconViewAsset(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/android/systemui/biometrics/shared/model/DisplayRotation;ZZ)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    if-eqz p3, :cond_0

    const p0, 0x7f12000d

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p0, 0x7f120008

    goto :goto_0

    :cond_1
    const p0, 0x7f12000a

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const p0, 0x7f12000e

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const p0, 0x7f120007

    goto :goto_0

    :cond_4
    const p0, 0x7f12000b

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    const p0, 0x7f12000f

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const p0, 0x7f120009

    goto :goto_0

    :cond_7
    const p0, 0x7f12000c

    :goto_0
    return p0
.end method
