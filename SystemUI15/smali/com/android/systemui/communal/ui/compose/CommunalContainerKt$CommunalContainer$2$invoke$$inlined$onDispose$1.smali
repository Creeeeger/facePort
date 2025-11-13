.class public final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $viewModel$inlined:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2$invoke$$inlined$onDispose$1;->$viewModel$inlined:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$2$invoke$$inlined$onDispose$1;->$viewModel$inlined:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->_transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
