.class public final Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final availabilityInteractors:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/android/systemui/user/data/repository/UserRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileAvailabilityInteractor;",
            ">;",
            "Lcom/android/systemui/user/data/repository/UserRepository;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor;->availabilityInteractors:Ljava/util/Map;

    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance p1, Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor$special$$inlined$map$1;

    iget-object p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor$newTilesAvailable$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor$newTilesAvailable$2;-><init>(Lcom/android/systemui/qs/panels/domain/interactor/NewTilesAvailabilityInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
