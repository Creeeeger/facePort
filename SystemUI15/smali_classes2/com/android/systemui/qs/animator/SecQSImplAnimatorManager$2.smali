.class public final Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->this$0:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCustomizerShowing(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->_isCustomizerShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->qsStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isThereNoView()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isNotVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    :cond_1
    :goto_0
    sput-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    return-void
.end method

.method public static setDetailClosing(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->_isDetailClosing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sput-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    return-void
.end method

.method public static setDetailOpening(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->_isDetailOpening:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->qsStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isThereNoView()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isNotVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    :cond_1
    :goto_0
    sput-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    return-void
.end method

.method public static setDetailShowing(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->_isDetailShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sput-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    return-void
.end method
