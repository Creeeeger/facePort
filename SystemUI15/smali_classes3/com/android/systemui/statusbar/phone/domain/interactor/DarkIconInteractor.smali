.class public final Lcom/android/systemui/statusbar/phone/domain/interactor/DarkIconInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final darkState:Lcom/android/systemui/statusbar/phone/domain/interactor/DarkIconInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/data/repository/DarkIconRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/phone/data/repository/DarkIconRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/data/repository/DarkIconRepositoryImpl;->darkState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/phone/domain/interactor/DarkIconInteractor$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/domain/interactor/DarkIconInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/domain/interactor/DarkIconInteractor;->darkState:Lcom/android/systemui/statusbar/phone/domain/interactor/DarkIconInteractor$special$$inlined$map$1;

    return-void
.end method
