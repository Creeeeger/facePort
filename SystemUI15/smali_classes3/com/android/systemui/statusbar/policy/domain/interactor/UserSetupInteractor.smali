.class public final Lcom/android/systemui/statusbar/policy/domain/interactor/UserSetupInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isUserSetUp:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepositoryImpl;

    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepositoryImpl;->isUserSetUp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
