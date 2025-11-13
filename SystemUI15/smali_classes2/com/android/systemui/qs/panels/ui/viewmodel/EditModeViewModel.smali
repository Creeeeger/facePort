.class public final Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _isEditing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final currentTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

.field public final defaultGridLayout:Lcom/android/systemui/qs/panels/ui/compose/GridLayout;

.field public final editTilesListInteractor:Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;

.field public final gridLayout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isEditing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final minTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/MinimumTilesInteractor;

.field public final tiles:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final tilesAvailabilityInteractor:Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;Lcom/android/systemui/qs/pipeline/domain/interactor/MinimumTilesInteractor;Lcom/android/systemui/qs/panels/ui/compose/GridLayout;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;",
            "Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/MinimumTilesInteractor;",
            "Lcom/android/systemui/qs/panels/ui/compose/GridLayout;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/qs/panels/shared/model/GridLayoutType;",
            "Lcom/android/systemui/qs/panels/ui/compose/GridLayout;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->editTilesListInteractor:Lcom/android/systemui/qs/panels/domain/interactor/EditTilesListInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->currentTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

    iput-object p3, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->tilesAvailabilityInteractor:Lcom/android/systemui/qs/panels/domain/interactor/TilesAvailabilityInteractor;

    iput-object p4, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->minTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/MinimumTilesInteractor;

    iput-object p5, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;->defaultGridLayout:Lcom/android/systemui/qs/panels/ui/compose/GridLayout;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iget-object p2, p7, Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;->layout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$map$1;

    invoke-direct {p3, p2, p8, p0}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {p3, p6, p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
