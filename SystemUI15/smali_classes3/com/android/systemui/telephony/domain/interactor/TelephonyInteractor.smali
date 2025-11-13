.class public final Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callState:Lkotlinx/coroutines/flow/Flow;

.field public final hasTelephonyRadio:Z

.field public final isInCall:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/telephony/data/repository/TelephonyRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->callState:Lkotlinx/coroutines/flow/Flow;

    iput-object v0, p0, Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;->callState:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p1, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->isInCall:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;->isInCall:Lkotlinx/coroutines/flow/StateFlow;

    iget-boolean p1, p1, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->hasTelephonyRadio:Z

    iput-boolean p1, p0, Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;->hasTelephonyRadio:Z

    return-void
.end method
