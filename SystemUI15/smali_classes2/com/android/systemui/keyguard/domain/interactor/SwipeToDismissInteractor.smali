.class public final Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dismissFling:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    check-cast p2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->currentFling:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object p4, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/util/kotlin/Utils$Companion;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor$special$$inlined$filter$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor$special$$inlined$map$1;

    invoke-direct {p2, p3}, Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p4, 0x0

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;->dismissFling:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
