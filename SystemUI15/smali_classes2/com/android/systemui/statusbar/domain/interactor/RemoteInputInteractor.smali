.class public final Lcom/android/systemui/statusbar/domain/interactor/RemoteInputInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/data/repository/RemoteInputRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/data/repository/RemoteInputRepositoryImpl;

    iget-object p0, p1, Lcom/android/systemui/statusbar/data/repository/RemoteInputRepositoryImpl;->isRemoteInputActive:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
