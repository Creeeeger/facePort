.class public final Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor$special$$inlined$map$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor;->icon:Lcom/android/systemui/statusbar/pipeline/ethernet/domain/EthernetInteractor$special$$inlined$map$1;

    return-void
.end method
