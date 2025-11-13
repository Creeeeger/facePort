.class public final Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 3

    sget v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->_panelTransitionEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-boolean v1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->_panelTransitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
