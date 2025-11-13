.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->_screenOffState:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->_screenOffState:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->_screenOffState:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->_screenOffState:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
