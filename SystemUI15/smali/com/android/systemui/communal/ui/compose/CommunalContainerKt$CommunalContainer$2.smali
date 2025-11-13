.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;->$state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;->$state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    invoke-static {v0}, Lcom/android/compose/animation/scene/ObservableTransitionStateKt;->observableTransitionState(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object p1, p1, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast p1, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->_transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    new-instance p1, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2$invoke$$inlined$onDispose$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;)V

    return-object p1
.end method
