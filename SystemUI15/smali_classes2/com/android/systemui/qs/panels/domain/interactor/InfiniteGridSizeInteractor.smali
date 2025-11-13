.class public final Lcom/android/systemui/qs/panels/domain/interactor/InfiniteGridSizeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final columns:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/data/repository/InfiniteGridSizeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/qs/panels/data/repository/InfiniteGridSizeRepository;->columns:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/qs/panels/domain/interactor/InfiniteGridSizeInteractor;->columns:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
