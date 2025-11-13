.class public final Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final gridLayout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final tileViewModels:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;Ljava/util/Map;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;Lcom/android/systemui/qs/panels/ui/compose/GridLayout;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/qs/panels/shared/model/GridLayoutType;",
            "Lcom/android/systemui/qs/panels/ui/compose/GridLayout;",
            ">;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;",
            "Lcom/android/systemui/qs/panels/ui/compose/GridLayout;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;->layout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel$special$$inlined$map$1;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lcom/android/systemui/qs/panels/ui/compose/GridLayout;)V

    sget-object p0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p1, p5, p0, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p3, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;

    iget-object p0, p3, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel$tileViewModels$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel$tileViewModels$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
