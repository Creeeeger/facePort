.class public final Lcom/android/systemui/qs/panels/ui/viewmodel/InfiniteGridSizeViewModelImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/panels/ui/viewmodel/InfiniteGridSizeViewModel;


# instance fields
.field public final columns:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/domain/interactor/InfiniteGridSizeInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/qs/panels/domain/interactor/InfiniteGridSizeInteractor;->columns:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
