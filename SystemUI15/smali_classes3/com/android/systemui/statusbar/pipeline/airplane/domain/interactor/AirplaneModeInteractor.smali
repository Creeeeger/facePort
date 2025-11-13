.class public final Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final airplaneModeRepository:Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;

.field public final isAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

.field public final isForceHidden:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;

.field public final mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->airplaneModeRepository:Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;->isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;

    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isForceHidden:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;

    return-void
.end method


# virtual methods
.method public final setIsAirplaneMode(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;

    iget v1, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;-><init>(Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->Z$0:Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->Z$0:Z

    iput v4, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->label:I

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->isInEcmMode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$SetResult;->BLOCKED_BY_ECM:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$SetResult;

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->airplaneModeRepository:Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$setIsAirplaneMode$1;->label:I

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;->setIsAirplaneMode(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$SetResult;->SUCCESS:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$SetResult;

    :goto_3
    return-object p0
.end method
