.class public final Lcom/android/systemui/keyevent/domain/interactor/KeyEventInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isPowerButtonDown:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyevent/data/repository/KeyEventRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyevent/data/repository/KeyEventRepositoryImpl;->isPowerButtonDown:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/keyevent/domain/interactor/KeyEventInteractor;->isPowerButtonDown:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
