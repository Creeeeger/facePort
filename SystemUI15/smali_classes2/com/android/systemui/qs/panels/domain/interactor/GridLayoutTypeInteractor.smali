.class public final Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final layout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/data/repository/GridLayoutTypeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/qs/panels/data/repository/GridLayoutTypeRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/panels/data/repository/GridLayoutTypeRepositoryImpl;->layout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;->layout:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
