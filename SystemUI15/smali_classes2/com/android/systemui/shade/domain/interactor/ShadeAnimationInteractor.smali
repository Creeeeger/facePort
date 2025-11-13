.class public abstract Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isLaunchingActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeAnimationRepository:Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->shadeAnimationRepository:Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;

    iget-object p1, p1, Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;->isLaunchingActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->isLaunchingActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public abstract isAnyCloseAnimationRunning()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public final setIsLaunchingActivity(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->shadeAnimationRepository:Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;->isLaunchingActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
