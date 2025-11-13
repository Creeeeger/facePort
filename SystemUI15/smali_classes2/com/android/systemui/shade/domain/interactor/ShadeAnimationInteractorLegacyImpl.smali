.class public final Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractorLegacyImpl;
.super Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isAnyCloseAnimationRunning:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;-><init>(Lcom/android/systemui/shade/data/repository/ShadeAnimationRepository;)V

    check-cast p2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p1, p2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsClosing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractorLegacyImpl;->isAnyCloseAnimationRunning:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final isAnyCloseAnimationRunning()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractorLegacyImpl;->isAnyCloseAnimationRunning:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method
